class OrangeTree
  def initialize
    @height = 1
    @year = 0
    @oranges = 0
    @lifespan = 120
    puts "Your orange tree has been planted."
  end

  def height
    puts "Your orange tree is #{@height}ft. tall. "
  end

  def count_the_oranges
    puts "There are #{@oranges} oranges left on the tree this season."
  end

  def pick_an_orange
    if @year < 3
      puts "Your orange tree has not matured yet."
    else
      if @oranges > 0
        @oranges = @oranges - 1
        puts "You taste a delicious orange."
      else
        puts "Your orange tree has no more oranges left this season."
      end
    end
  end

  def one_year_passes
    @year += 1
    if @year == @lifespan
      puts "Your tree has died."
      exit
    end
    if @year < 16
      @height = (2 * @year)
    end
    @oranges = number_of_oranges
  end

  private

    def number_of_oranges
      if @year < 3
        0
      elsif @year < 16
        20 + (@year - 3) * 40 # 20 the third year and 40 more every year till year 15
      else
        500 - (@year - 15) * 3 # 500 the 15th year and 3 less every year till death
      end
    end
end

tree = OrangeTree.new
tree.height
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.height
tree.one_year_passes
tree.pick_an_orange
tree.count_the_oranges
13.times { tree.one_year_passes }
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.height
120.times { tree.one_year_passes }

