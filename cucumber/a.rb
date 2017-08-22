class A
  
  def initialize
    @bbb = 111111111
  end

  def lolli(selector)
    puts '!!!!!!!!!!!!', selector, '---'
  end

  def print_lol
    lolli(@bbb)
  end
end

a = A.new
a.print_lol