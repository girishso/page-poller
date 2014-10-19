//= require hermes-endpoint

(function() {
  var jQuery,
      jQueryURL     = '//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js';
  alert(jQueryURL)
  
  function loadJavaScript(url, loadHandler) {
    var script_tag = document.createElement('script');
    script_tag.setAttribute('src', url);

    if (script_tag.readyState) {
      script_tag.onreadystatechange = function () {
        if (this.readyState == 'complete' || this.readyState == 'loaded') {
          typeof loadHandler == 'function' && loadHandler();
        }
      };
    } else {
      script_tag.onload = loadHandler;
    }

    (document.getElementsByTagName('head')[0] || document.documentElement).appendChild(script_tag);
  }

  if (window.jQuery === undefined ||
      window.jQuery.fn.jquery === undefined ||
      window.jQuery.fn.jquery.split === undefined) {

    loadJavaScript(jQueryURL, jQueryLoadHandler);

  } else {
    // Check for sufficiently recent version - at least 1.5.
    //
    var ver = window.jQuery.fn.jquery.split('.'),
        maj = parseInt(ver[0]),
        min = parseInt(ver[1]);

    if (maj == 1 && min > 4) {
      jQuery = window.jQuery;
      main();

    } else
      loadJavaScript(jQueryURL, jQueryLoadHandler)
  }

  function jQueryLoadHandler() {
    jQuery = window.jQuery.noConflict(true);
    main();
  }

  function main() {
    jQuery(document).ready(function($) {
      var h = new Hermes($);

      if ((m = document.location.hash.match(/^#hermes-authoring,(https?)/)) && window.opener) {
        h.author(m[1]); // XXX DIRTY

      } else if ((m = document.location.hash.match(/#hermes-preview,([\w\/]+)/))) {
        h.preview(m[1]);

      } else {
        h.display();
      }
    });
  }

  function Hermes($) {
    this.display = function() {
      __hermes_init_popover__($);

      $.ajax(__hermes_host__ + '/messages.js', {
        dataType: 'jsonp',
        success: enqueue.bind(this)
      });
    }

    this.preview = function (path) {
      __hermes_init_popover__($);

      $.ajax(__hermes_host__ + path, {
        dataType: 'jsonp',
        success: show
      });
    }

    var enqueue = function(messages) {
      this.queue = messages;
      dequeue.apply(this);
    };

    var dequeue = function() {
      if (this.queue.length == 0) return;
      show(this.queue.shift());

      $(window).one('hermes.dismiss-message', function () {
        setTimeout(dequeue.bind(this), 250);
      }.bind(this));
    }

    var show = function(message) {
      switch(message.type) {
      case 'tutorial':
        break;

      case 'tip':
        var target = $(message.selector);
        pos = target.position();

        var body = $(document.body);
        if (Math.abs(body.scrollTop() - pos.top) > ($(window).innerHeight() - 80))
          body.animate({scrollTop: pos.top - 80}, {
            duration: 300,
            complete: function() { showTip(message, target, true) }
          });

        else
          showTip(message, target);

        break;

      default:
        showBroadcast(message);
        break;
      }
    }

    var showTutorial = function(tutorial) {
      console.log(tutorial); // XXX
    }

    var showTip = function(tip, elem) {
      var content = $('<div class="hermes-content" />');
      content.html(tip.content);

      var buttonsContainer = $('<div class="hermes-actions" />');
      content.append(buttonsContainer);

      var close = $('<button class="hermes-close" />').html('Got it!');
      close.click(function (event) {
        elem.popover('destroy');
        saveTipStateAndSnooze(tip, event);
      });
      buttonsContainer.append(close);

      elem.popover({
        html: true,
        placement: 'auto',
        trigger: 'manual',
        title: tip.title,
        content: content,
        container: 'body'
      });

      elem.popover('show');
    }

    var showBroadcast = function(broadcast) {
      var elem = $('<div class="hermes-broadcast" />');

      var close = $('<button class="hermes-close" />').html('&times;');
      close.click(function (event) {
        elem.remove();
        saveTipStateAndSnooze(broadcast, event)
      });

      elem.append(broadcast.content).append(close);

      $(document.body).prepend(elem);
    }

    var saveTipStateAndSnooze = function(tip, event) {
      event.preventDefault();
      event.stopPropagation();
      event.stopImmediatePropagation();

      $(window).trigger('hermes.dismiss-message');

      $.ajax(tip.url, {
        dataType: 'jsonp',
        complete: function(jqXHR, status) { /* Nothing, for now */ }
      });
    };

    this.author = function (opener_protocol) {
      // Cache the document here for speed.
      var doc = $(document);

      // This is the selected element, that gets updated while hovering
      var selected = null;

      // This is the way out, that sends the selected element Selector out to
      // the opener window.
      var callback = function (event) {
        event.preventDefault();
        event.stopPropagation();
        event.stopImmediatePropagation();

        var path = getPath(selected);

        window.opener.postMessage(path, opener_protocol + ':' + __hermes_host__);
        window.close();
      };

      // Stolen from http://stackoverflow.com/a/4588211/69379
      //
      var getPath = function (el) {
        var names = [];

        while (el.parentNode) {
          if (el.id) {
            names.unshift('#'+el.id);
            break;
          } else {
            if (el == el.ownerDocument.documentElement)
              names.unshift(el.tagName);
            else {
              for (var c=1, e=el; e.previousElementSibling; e = e.previousElementSibling, c++);
              names.unshift(el.tagName + ':nth-child('+c+')');
            }
            el = el.parentNode;
          }
        }
        return names.join(' > ');
      };

      // Create the 4 overlays that make up the border of the hovering element.
      //
      var css = {
        margin: 0, padding: 0, position: 'absolute',
        'background-color': '#a00', cursor: 'pointer'
      };
      var overlay = {
        N: $('<div/>', {id: 'overlayN'}).css(css),
        S: $('<div/>', {id: 'overlayS'}).css(css),
        E: $('<div/>', {id: 'overlayE'}).css(css),
        W: $('<div/>', {id: 'overlayW'}).css(css),
      };

      for (i in overlay) {
        overlay[i].bind('click.hermes', callback);
        $('html').append(overlay[i]);
      }

      var thickness = 5; // px

      // And now set the mousemove event handler
      $('body').on('mousemove', function (event) {
        try {

          var elem = event.toElement;

          if (elem.tagName == 'BODY')
            return;

          if (elem == selected)
            return;

          // Build the wrapping rectangle
          //
          var rect = elem.getBoundingClientRect();
          var stop = doc.scrollTop(), sleft = doc.scrollLeft();

          // North
          //
          overlay.N.css({
            width:  rect.width,
            height: thickness,
            top:    (rect.top - thickness/2) + stop,
            left:   (rect.left) + sleft
          });

          // South
          //
          overlay.S.css({
            width:  rect.width,
            height: thickness,
            top:    (rect.top + rect.height - thickness/2) + stop,
            left:   (rect.left) + sleft
          });

          // East
          //
          overlay.E.css({
            width:  thickness,
            height: rect.height + thickness,
            top:    (rect.top  - thickness/2) + stop,
            left:   (rect.left + rect.width - thickness/2) + sleft
          });

          // West
          //
          overlay.W.css({
            width:  thickness,
            height: rect.height + thickness,
            top:    (rect.top  - thickness/2) + stop,
            left:   (rect.left - thickness/2) + sleft
          });

          // Reset the old selected element
          //
          if (selected) {
            selected = $(selected);
            selected.css(selected.data('hermes-restore-css')).
              data('hermes-restore-css', null).
              unbind('click.hermes', callback);
          }
          selected = elem;

          // Set the onclick handler to our callback
          //
          $(selected).data('hermes-restore-css', {
            'cursor': selected.style.cursor,
            'background-color': selected.style.backgroundColor
          }).css({
            'cursor': 'pointer',
            'background-color': '#ddd'
          }).bind('click.hermes', callback);

        } catch (e) {
          console.log(e);
        }
      });
    }

    return this;
  }

})();
