module ApplicationHelper
  def next_run_time(next_run_time)
    next_run_time.present? ? "in " + time_ago_in_words(next_run_time) : 'never'
  end
  
  def success_fail(flag)
    flag ?
    '<span class="label label-info">Ok</span>'
    :
    '<span class="label label-danger">Failed</span>'
  end
end
