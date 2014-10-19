module ApplicationHelper
  def next_run_time(next_run_time)
    next_run_time.present? ? "in " + time_ago_in_words(next_run_time) : 'never'
  end
end
