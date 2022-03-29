


//클래스 이름과 파일 이름이 똑같이하는게 관례
struct Enemy {
//    var health = 100
//    var attackStrength = 10
    
    //init (빈 값을 넣어 전달)
    var health: Int
    var attackStrength: Int
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    mutating func takeDamage(amount: Int) {
        health = health - amount
    }
    
    func move() {
        print("Walk forwards")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}



