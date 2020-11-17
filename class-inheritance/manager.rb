require_relative "./employee.rb"

class Manager < Employee

    def initialize(name, title, salary, boss=nil, employees=nil)
        super(name, title, salary, boss)
        @employees = []
    end 

    def bonus(mulitplier)
        bonus = 0 
        # make sure you add manager's employees if there is manager
        employees.each do |employee|
            bonus += employee.salary
        end

        bonus *= mulitplier
    end
    

    def add_employee(employee)
        employees << employee.name
    end

    private 
    attr_reader :employees


end

ned = Manager.new("ned", "CEO", "100")               #made manager
david = Employee.new("david", "TA", "10", ned)       #made david with ned as the boss
p david
p ned
# david.boss = ned                                     #added ned as the boss 
# ^^ not sure what this does but without it cannot 
ned.add_employee(david)                              #added david as ned's employee
p david
p ned