//
//  AddToDoView.swift
//  Yapcam
//
//  Created by Mustafa TAVASLI on 8.03.2024.
//

import SwiftUI

struct AddToDoView: View {
    // MARK: Properties
    @Environment(\.presentationMode) var presentationMode
    @State private var name : String = ""
    @State private var priority : String = "Normal"
    
    let priorities = ["Yüksek", "Normal", "Düşük"]
    
    // MARK: Body
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: ToDo Name
                    TextField("...", text: $name)
                    // MARK: ToDo Priority
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    // MARK: Save Button
                    Button(action: {
                        print("Yapılacaklar Listesi'ne ekleme yapıldı.")
                    }, label: {
                        Text("Kaydet")
                    })
                }
                .navigationTitle("Yapcam")
                .navigationBarItems(trailing: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
            }
        }
    }
}

// MARK: Preview
#Preview {
    AddToDoView()
}

// MARK: Personal Notes
// presentationMode kullanarak sayfanın kapanmasını sağlıyoruz. Kapanma işlemi için de dismiss() özelliğini ekledik.
