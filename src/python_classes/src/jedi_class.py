class Jedi:
    def __init__(self, name): # "constructor" called as soon as an object of a class is created 
        self.name = name # used for initalizing atributes 

    def say_hi(self): # this the method of the class 
        print('Hello, my name is', self.name) # print whatever is sent to it

j = Jedi('ObiWan') # creating an object of the Jedi class and storing it as j
j.say_hi() # calling the say_hi() method 

#self.name # we use the self keyword when wanting define a new method of the class. Also when passing a new keyword 