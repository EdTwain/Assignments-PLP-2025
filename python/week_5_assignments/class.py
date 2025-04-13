class Superhero:
    def __init__(self, name, power, secret_identity):
        # Encapsulation: Protected attributes (convention with _)
        self._name = name
        self._power = power
        self._secret_identity = secret_identity  # Hidden from public
    
    def use_power(self):
        print(f"{self._name} uses {self._power}!")
    
    def introduce(self):
        # Expose only partial info (hiding secret identity)
        print(f"I'm {self._name}, and my power is {self._power}!")

# Inherits from Superhero
class TechHero(Superhero):
    def __init__(self, name, power, secret_identity, gadget):
        super().__init__(name, power, secret_identity)
        # Encapsulation: "Private" gadget (name mangling with __)
        self.__gadget = gadget
    
    def use_power(self):  # Polymorphism: Override parent method
        super().use_power()  # Reuse parent logic
        print(f"...and deploys {self.__gadget}!")
    
    def upgrade_gadget(self, new_gadget):
        self.__gadget = new_gadget  # Controlled modification
    
    def get_gadget(self):  # Getter for encapsulated attribute
        return self.__gadget

# Example usage
thor = Superhero("Thor", "lightning", "Thor Odinson")
thor.introduce()  
thor.use_power()  
print("---")

iron_man = TechHero("Iron Man", "tech", "Tony Stark", "Repulsors")
iron_man.introduce() 
iron_man.use_power()  

# Accessing encapsulated gadget via getter
print(iron_man.get_gadget())  

# Upgrading gadget (encapsulated)
iron_man.upgrade_gadget("Arc Reactor")
print(iron_man.get_gadget()) 