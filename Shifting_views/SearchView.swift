//
//  SearchView.swift
//  Shifting_views
//
//  Created by sudeepa pal on 17/10/23.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchedText: String
    var body: some View {
        VStack{
            
            TextField("Search here..",text:$searchedText)
                .keyboardType(.webSearch)
                .disableAutocorrection(true)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    @State static var searchedText: String = ""
    static var previews: some View {
        SearchView(searchedText:$searchedText)
    }
}
