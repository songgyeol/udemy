

//protocol을 사용하는 이유 기본적으로 밑에 코드들을 사용하면 복잡하게 꼬인다.


//MARK: - Protocol
protocol Canfly {
    //프로토콜은 {} 가질 수 없다.
    func fly()
}

//상속은 클래스에서만 가능
//MARK: - BirdClass
class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("새는 알을 낳는다")
        }
    }
//[Protocol] 이용하면 - 모든 새는 날 수 있는게 아니기 때문에 BirdClass에서 삭제
//    func fly() {
//        print("새는 날개를 펄럭이며 하늘을 난다.")
//    }
}

//MARK: - Eagle Class
//Eagle - subClass, Bird - superClass
//BirdClass(super)에서 상속받은 EagleClass(sub)
//[Protocol] 이용하면 - Canfly 프로토콜을 채택해서 사용가능,
//반대로 말하면 -> Canfly프로토콜을 채택하면 fly() method를 구현해야 한다.
class Eagle: Bird, Canfly {
    func fly() {
        print("독수리는 날개를 펄럭이며 하늘을 난다.")
    }
    
    
    func soar() {
        print("독수리는 기류를 이용해 공중에서 활공한다.")
    }
}

//MARK: - PenguinClass
class Penguin: Bird {
    
    func swim() {
        print("펭퀸은 물속에서 노를저어 나아갑니다.")
    }
}

//MARK: - FlyingMuseumStruct
struct FlyingMuseum {
    //플라잉데모 - 비행물체 - 새
    //새중에 펭귄은 날 수 없다.
    //                       [프로토콜]타입으로 채택
    func flyingDemo(flyingObject: Canfly) {
        flyingObject.fly()
    }
}

//MARK: - AirplaneStruct
//1. 비행기는 새가 아니다.  class로 Bird상속 X
//2. 방법은 있지만 머리아픔, 날 수 있게 되지만 알도 낳고 할 수 있다
//2-1(클래스로 버드를 상속하고 재정의해서 하는 방법)
//class Airplane: Bird {
//    override func fly() {
//        print("비행기는 엔진을 이용해 공중으로 뜹니다.")
//    }
//}

//[프로토콜]을 채택하면 상속받을 필요가 없기 때문에 class사용 x
struct Airplane: Canfly {
    func fly() {
        print("비행기는 엔진을 이용해 공중으로 뜹니다.")
    }
}



//초기화
//MARK: - Eagle
let myEagle = Eagle()
//BirdClass 상속
myEagle.fly()
myEagle.layEgg()

//EagleClass 상속
myEagle.soar()


//MARK: - Penguin
let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
//myPenguin.fly() Penguin은 날 수 없다.

//MARK: - AirPlane
let myPlane = Airplane()

//MARK: - FlyingMusenum
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
//museum.flyingDemo(flyingObject: myPenguin) - 펭귄은 날 수 없다.
//museum.flyingDemo(flyingObject: Airplane) - 비행기는 새가 아니기 떄문에(에러)



