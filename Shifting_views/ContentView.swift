//
//  ContentView.swift
//  Shifting_views
//
//  Created by sudeepa pal on 17/10/23.
//

import SwiftUI

struct ContentView: View {
  
    @State var  searchedText: String = ""
   
    var body: some View {
        
        VStack{
            NavigationLink{
                SearchView(searchedText: $searchedText)
            }label: {
                Image(systemName: "plus")
            }
            Text(self.searchedText)
            
        }.padding()
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        
    }
}
