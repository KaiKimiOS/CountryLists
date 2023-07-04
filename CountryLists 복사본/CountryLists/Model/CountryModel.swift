//
//  CountryModel.swift
//  CountryLists
//
//  Created by kaikim on 2023/07/04.
//

import Foundation


//MARK: - List에 필요한 UUID 프로토콜로 선언해주기
protocol CountryBasics:Identifiable {
    
    var id: UUID { get } // {get}으로 프로토콜 선언 후에 extension에서 구현해주면 struct에서 구현 안해도 됨.
    var name: String { get }
    
}

//MARK: - 위의 프로토콜에서 UUID를 extension을 활용하여 바로 구현해주기
extension CountryBasics {
    
    var id: UUID {
        return UUID()
        
    }
}

//MARK: - 대륙 Model
struct CountryDatas:CountryBasics {
    
    
    var name: String
    var scaleRank: Int
    var nearOcean: String
    var nations: [Nations]
    
}

//MARK: - 국가 모델
struct Nations: CountryBasics {
    var name: String
    var capital: String
    var language: Language
    var countryCode: Int
    var population: String
    var gdp: String
    var currencyUnit: String
    
}


//MARK: -  enum을 활용하여 Language 타입 만들어서 활용해보기
enum Language: String {
    
    case korean = "한국어"
    case english = "영어"
    case etc = "기타"
    
}
