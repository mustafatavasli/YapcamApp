//
//  ContentView.swift
//  Yapcam
//
//  Created by Mustafa TAVASLI on 8.03.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // MARK: Properties
    @State private var showingAddToDoView : Bool = false
    // MARK: Body
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                Text("Yapılacaklar Listesi Ögeleri")
            }
            .navigationTitle("Yapılacaklar Listesi")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {
                // showingAddToDoView : true
                self.showingAddToDoView.toggle()
            }) {
                Image(systemName: "plus")
            }
                .sheet(isPresented: $showingAddToDoView, content: {
                    AddToDoView()
                })
            )
        }
    }
}

// MARK: Preview
#Preview {
    ContentView()
}

// MARK: Personal Notes
// showingAddToDoView kullanarak butona basılma durumlarını kontrol ediyoruz. Butona basıldıkça AddToDoView() sayfasını açma-kapama işlemlerini gerçekleştiriyoruz.
