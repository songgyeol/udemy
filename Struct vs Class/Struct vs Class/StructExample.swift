//
//  StructExample.swift
//  Struct vs Class
//
//  Created by 송결 on 2022/03/23.
//

import Foundation
//구조체는 값 유형 ( 값을 복사함 새로운걸 만든다) , 이러한 이유로 구조체가 할 수 없는 한 가지 = 하위 구조체만들기 subclass
struct StructHero {
    
    var name: String
    var universe: String
    
}
//Class에서는 생성자가 없으면 파로 컴파일 에러, 반면에 Struct에서는 무료로 초기화를 얻는다
//let hero = StructHero(name: <#T##String#>, universe: <#T##String#>)


//간단하고, 빠르고, 복사하며, 불변성을 갖고, 메모리누수와 스레드 안정성이 있다
