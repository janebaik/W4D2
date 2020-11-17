class Employee


    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary =  salary.split(",").join("").to_i
        @boss = boss

    end

    # def boss=(new_boss)
    #     boss = new_boss
    # end

    def bonus(mulitplier)
        bonus = salary * mulitplier
    end

    protected 
    attr_reader :name
    private 
    attr_reader :salary, :boss

end 