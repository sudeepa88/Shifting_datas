//
//  ContentView.swift
//  Shifting_views
//
//  Created by sudeepa pal on 17/10/23.
//

import SwiftUI

struct ContentView: View {
  
    @State var  searchedText: String = ""
    @State var enteredTexts: [String] = []
    var body: some View {
        
        VStack{
            NavigationLink{
                SearchView(searchedText: $searchedText, enteredText:$enteredTexts)
            }label: {
                Image(systemName: "plus")
            }
            Text(self.searchedText)
            ForEach(enteredTexts, id: \.self){ id in
                VStack {
                    Text(id)
                }
            }//id in loop
            
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
