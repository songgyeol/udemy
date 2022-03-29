
//superClass는 부모, subClass는 자식

/*Class
//let skeleton1 = Enemy(health: 100, attackStrength: 10)
//let skeleton2 = skeleton1
*/
 
//Struct - var
var skeleton1 = Enemy(health: 100, attackStrength: 10)
var skeleton2 = skeleton1


skeleton1.takeDamage(amount: 10)
//스켈레톤1을 참조하기 때문에 데미지를 입지않은 2의 데미지도 -10이 된다. "참조하기 때문에"
//동일한 개체에 대한 다른 참조를 만든것 -> 클래스가 구조체보다 더 복잡하고 오류가 발생하기 쉬운 것으로 간주되는 이유
print(skeleton2.health)


/*
let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!")
dragon.move()
dragon.attack()*/
