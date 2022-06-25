#1
class User
    # attr_accessor :name , :age
    def initialize()
        @name = "user"
    end

    def name
        @name
    end
    def setName=(inputName)
        @name = inputName
    end
    
    def getAge
        @age
    end
    def setAge=(age)
        @age = age
    end


end


# user1= User.new
# p user1.name
# user1.setName = "Adham"
# user1.setAge = 25
# p user1.name
# p user1.getAge



#2

class MathClass
    def validateInt(num1,num2 )
        if((num1.is_a? Integer) && (num2.is_a? Integer)) #&& num2.is_a? Integer
         return true
        else
         return raise "Error : Inputs not Integers"
        end 
    end

    def calc(num1 , num2 , op)
        self.validateInt(num1,num2)
        num1 = num1.to_i
        num2 = num2.to_i
        case op
        when "*"
           return eval("num1 * num2")
        when "+"
            return eval("num1 + num2")
        when "-"
            return eval("num1 - num2") 
        when "/"
           if (num2==0)
            return raise "ERROR : Division By zero "   
           else 
            return eval("num1 / num2")     
           end
        else
            raise "ERROR : Invalid operator"   
        end
    end

end

# mathObj = MathClass.new
# p mathObj.calc(10,0,"/")


# 3
require 'date'
class Person
    def initialize
        @fname = "John"
        @lname = "Smith"
        @birth_date = Date.new(1997,01,21)
    end
    attr_accessor :fname, :lname, :birth_date
    def calcAge
        ageInDays = (Date.today - @birth_date).to_i
        ageInMonths = ageInDays / 30
        ageInYears = ageInMonths / 12
        
        p "Welcome #{@fname} #{@lname}!"
        p  "you are #{ageInDays} Days old!"
        p  "you are #{ageInMonths} Months old!"
        p  "you are #{ageInYears} Years old!"
    end
end

user1 = Person.new
user1.fname = "Adham"
user1.lname = "Hassan"
# user1.birth_date = Date.new(1998,12,24)
user1.calcAge







