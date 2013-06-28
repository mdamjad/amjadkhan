module Cal
def add(a,b)
	a+b
end
def sub(a,b)
   	a-b
end
def mul(a,b)
  	 a*b
end
def div(a,b)
  	 a/b
end
end


class Assign
include Cal
 
def self.sort(*arr)
      	unless arr.empty?
        	arr.each_index do |i|
         		arr.each_index do |j|
            			if arr[i] < arr[j]
                  			 arr[i],arr[j]=arr[j],arr[i]
           			 end
          		end
        	end
      	end
      	return arr
end

def self.gcd(a,b)
      begin
      if a==0 || b==0
        	raise "ZeroDivisionError"
      else
        	while b != 0
           		a,b=b,a%b 
       		 end
      end
      end
      return a
end

def self.substr(str,sub)
      unless str.empty? && sub.empty?
      str.include? sub
      end
end

def self.calculator(a,b)
	c=Assign.new
	result=[]
   	result << c.add(a,b)
   	result << c.sub(a,b)
   	result << c.mul(a,b)
   	result << c.div(a,b)
end
end
