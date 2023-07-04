//
//  CountryDatas.swift
//  CountryLists
//
//  Created by kaikim on 2023/07/04.
//

import Foundation


var countryLists: [CountryDatas] = [CountryDatas(name: "아시아", scaleRank: 1, nearOcean: "태평양", nations:
                                                [Nations(name: "한국", capital: "서울", language: .korean, countryCode: 82, population: "5500백만", gdp: "모름", currencyUnit: "원화"),
                                                 Nations(name: "중국", capital: "중국", language: .etc, countryCode: 82, population: "중국", gdp: "중국", currencyUnit: "중국")]),
                                CountryDatas(name: "유럽", scaleRank: 3, nearOcean: "대서양", nations:
                                                [Nations(name: "프랑스", capital: "파리", language: .etc, countryCode: 82, population: "중국", gdp: "중국", currencyUnit: "중국"),
                                                 Nations(name: "스페인", capital: "마드리드", language: .english, countryCode: 82, population: "중국", gdp: "중국", currencyUnit: "중국")])]

