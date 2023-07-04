//
//  ContentView.swift
//  CountryLists
//
//  Created by kaikim on 2023/07/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            List(countryLists){ list in
                
                NavigationLink {
                    NationsListView(information: list.nations)
                } label: {
                    Text("\(list.name)")
                }
                
            }.navigationBarTitle("대륙", displayMode: .inline)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
