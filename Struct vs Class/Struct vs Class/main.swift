//
//  ViewController.swift
//  Struct vs Class
//
//  Created by 송결 on 2022/03/23.
//

import UIKit
         //Class,Struct 두 가지 예시
var hero = StructHero(name: "Iron Man", universe: "Marvel")

var anotherMarvelHero = hero
anotherMarvelHero.name = "The Hulk"

var avengers = [hero, anotherMarvelHero]
avengers[0].name = "Thor"


//클래스는 참조 유형 (복사하면 모든 데이터가 포함된 "객체"에 대한 "두 개의 참조"가 있다, 새로운 객체가 아님, 참조하는것)
//구조체는 값 유형 ( 값을 복사함 새로운걸 만든다)

print("hero name = \(hero.name)")
//Class : 헐크,헐크,헐크
//Struct : 아이언맨,헐크,토르

print("anotherMarvelhero name = \(anotherMarvelHero.name)")
//Class : 헐크,헐크,헐크
//Struct : 아이언맨,헐크,토크

//새로운 객체
print("first avengers name = \(avengers[0].name)")
//Class : 토르,토르,토르
//Struct : 아이언맨,헐크,토르

//Struct장점 훨씨 간다하고 직관적
//


//MARK: - Class 사용예시
//let 상수를 사용할 시 class는 참조유형이기 떄문에 가능,
//struct는 값유형이기 때문에 let상수에서는 사용 불가

let hero = ClassHero(name: "Iron Man", universe: "Marvel")
hero.name = "Cat Woman"
hero.universe = "DC"
