//
//  NationsListView.swift
//  CountryLists
//
//  Created by kaikim on 2023/07/04.
//

import SwiftUI

struct NationsListView: View {
    
    var information: [Nations]
    
    var body: some View {
        NavigationStack{
            List(){
                
                ForEach(information) { information in
                    
                    NavigationLink {
                        CountryView(information: information)
                    } label: {
                        Text(information.name)
                    }
                    
                    
                }
                
            }.navigationTitle("나라")
            
            
        }
    }
}

struct NationsListView_Previews: PreviewProvider {
    static var previews: some View {
        NationsListView(information: [Nations(name: "한국", capital: "서울", language: .korean, countryCode: 82, population: "5500백만", gdp: "모름", currencyUnit: "원화"),
                                      Nations(name: "중국", capital: "중국", language: .etc, countryCode: 82, population: "중국", gdp: "중국", currencyUnit: "중국")])
    }
}
