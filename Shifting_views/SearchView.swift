//
//  SearchView.swift
//  Shifting_views
//
//  Created by sudeepa pal on 17/10/23.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var searchedText: String
    @Binding var enteredText:[String]
    var body: some View {
        VStack{
            
            TextField("Search here..",text:$searchedText)
                .keyboardType(.webSearch)
                .disableAutocorrection(true)
            
            Button(action: {
                self.enteredText.append(self.searchedText)
                self.searchedText = ""
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Submit")
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    @State static var searchedText: String = ""
    @State static var enteredText: [String] = []
    static var previews: some View {
        SearchView(searchedText:$searchedText,enteredText:$enteredText)
    }
}
