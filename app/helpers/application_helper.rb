module ApplicationHelper
  def fix_url(url)
    url.starts_with?("http") ? url : "http://#{url}"
  end

  def nice_date(dt)
    dt.strftime("%m/%d/%Y 1:%M%P %Z") # 03/14/2013 9:09pm UTC
  end
end
