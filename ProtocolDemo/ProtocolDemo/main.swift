
//Protocol

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    
    func fly() {
        print("The bird flaps its wings and lifts off into the sky.")
    }
}

class Eagle: Bird {
    func soar() {
        print("The eagle glides in the air using air current.")
    }
}

//Eagle - subClass, Bird - superClass
//BirdClass(super)에서 상속받은 EagleClass(sub)
class Eagle: Bird {
    
}


