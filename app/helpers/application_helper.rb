module ApplicationHelper
 def full_title(page_title)
  base_title = "مطب آنلاین"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
 end
def persian_numbers(str)
    str ? str.unpack('U*').map{ |e| (0..9).to_a.include?(e-48) ? e + 1728 : e }.pack('U*') : ''
  end

  def persian_date(date)
    date ? persian_numbers(JalaliDate.new(date).format("%A %d %b %Y - %H:%m")) : ''
  end
end

