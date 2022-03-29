


//class에서는 사용가능하지만, struct에서는 상속이 안되기 때문에 사용불가

class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    /*상속받은 클래스를 재정의할 수 있다.
    //move() method를 선택하면 override = 재정의
    move()함수를 -> 재정의 일반함수 설정을 한다.*/
    override func move() {
        print("Fly forwards")
    }
    
    override func attack() {
        //super키워드는 슈퍼클래스의 attack 참조
        super.attack()
        print("Spit fire, does 10 damages.")
    }
    
}
