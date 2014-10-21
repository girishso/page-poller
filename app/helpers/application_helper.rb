module ApplicationHelper
  def humanize_time(time)
    return 'never' unless time.present?

    if time > Time.zone.now
      'in ' + time_ago_in_words(time)
    else
      time_ago_in_words(time) + ' ago'
    end
  end

  def success_fail(flag)
    flag ?
    '<span class="label label-info">Ok</span>'
    :
    '<span class="label label-danger">Failed</span>'
  end
end
