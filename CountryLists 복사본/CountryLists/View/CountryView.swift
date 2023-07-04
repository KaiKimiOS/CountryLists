//
//  CountryView.swift
//  CountryLists
//
//  Created by kaikim on 2023/07/04.
//

import SwiftUI

struct CountryView: View {
    
    var information: Nations
    var headerString: [String] = ["이름", "수도", "언어","국가번호","인구","GDP","화폐"]
   
    var body: some View {
       
       
        List {
            Section(content: {
                Text("수도: " + information.capital )
                Text(information.gdp)
            }, header: {
                Text(information.name + "🇰🇷").font(.largeTitle).fontWeight(.heavy)
                //소문자여도 대문자 출력됨, footer는 있는 그대로 출력
            })
            Section(content: {
                Text(information.currencyUnit)
                Text(information.population)
            }, header: {
                Text(information.name + "🇰🇷").font(.largeTitle).fontWeight(.heavy)
                //소문자여도 대문자 출력됨, footer는 있는 그대로 출력
            })

         

            Text(information.language.rawValue)
            Text("\(information.countryCode)")

            
        }.navigationTitle("\(information.name)")
            
            
    }
}


struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            CountryView(information: Nations(name: "한국", capital: "서울", language: .korean, countryCode: 82, population: "5500백만", gdp: "모름", currencyUnit: "원화")
            )
        }
    }
}


//let data1 = ["데이터 1", "데이터 2", "데이터 3", "데이터 4"]
//let data2 = ["데이터 5", "데이터 6", "데이터 7", "데이터 8"]
//
//var body: some View {
//    let sectionHead = ["섹션 1", "섹션 2"]
//    let footerHead = [data1, data2]
//
//    return List {
//        ForEach(footerHead.indices) { index in
//            Section(header: Text(sectionHead[index]).font(.title),
//                    footer: HStack{ Spacer(); Text("\(footerHead[index].count)수") }
//            )  {
//                ForEach(footerHead[index], id: \.self) {
//                    Text($0)
//                }
//            }
//        }
//    }
//}
