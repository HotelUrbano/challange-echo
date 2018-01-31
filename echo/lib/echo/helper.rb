module Echo
  class Helper
    def self.print(space, x, y, char)
      matrix = []

      matrix << ""
      matrix << "   #{'N'.rjust(space.y*4/2, ' ')}"
      matrix << Echo::Color.green("   #{(1..(space.y)).map { |d| d.to_s.rjust(3, ' ')  }.join(" ")}")
      matrix << "    +#{'---+'*space.y}"

      (1..(space.x)).to_a.each do |nx|

        line = (1..(space.y)).to_a.map do |ny|
          if nx == x && ny == y
            " #{Echo::Color.red(char)} "
          else
            "   "
          end
        end

        matrix << "#{Echo::Color.green(nx.to_s.rjust(3, ' '))} |#{line.join("|")}|"

        matrix << "    +#{'---+'*space.y}"
      end

      matrix << "   #{'S'.rjust(space.y*4/2, ' ')}\n"
      matrix.join("\n")
    end
  end
end