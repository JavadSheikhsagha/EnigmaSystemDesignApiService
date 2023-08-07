//
//  ContentView.swift
//  EnigmaDesignSystemApiService
//
//  Created by Javad on 8/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }.onAppear{
            GetApiService<[FactModel]>(url: "\(BASE_URL)facts").fetch { dataState in
                print("response : \(dataState)")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
