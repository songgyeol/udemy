//
//  ClassExample.swift
//  Struct vs Class
//
//  Created by 송결 on 2022/03/23.
//

import Foundation
//클래스는 참조 유형 (복사하면 모든 데이터가 포함된 "객체"에 대한 "두 개의 참조"가 있다, 새로운 객체가 아님, 참조하는것)
//class 생성방법
class ClassHero {
    var name: String
    var universe: String

    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}
//class에서 개체 초기화
//let hero = ClassHero(name: "Iron Man", universe: "Marvel")

//상속이 필요할때만 class를 사용을 권장한다.
