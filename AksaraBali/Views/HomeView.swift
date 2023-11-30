//
//  ContentView.swift
//  AksaraBali
//
//  Created by Kadek Edwin on 27/08/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        NavigationView {
            ScrollView {
//                ContentSliderView()
                
                VStack(alignment: .leading) {
                    Text("CONVERTER")
                        .padding(.horizontal)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                    VStack(spacing: 20) {
                        NavigationLink(destination: AntukAksaraView()) {
                            CardView(image: "antukaksara", title: "Antuk Aksara", description: "Mengubah huruf Latin ke Aksara Bali", more: "ᬳᬦᬘ")
                        }
                        NavigationLink(destination: AntukLatinView()) {
                            CardView(image: "antuklatin", title: "Antuk Latin", description: "Mengubah Aksara Bali ke Latin", more: "ABC")
                        }
                    }
                    .foregroundStyle(.black)
                }
            }
            .padding()
            .navigationBarTitle("Aksara Bali", displayMode: .large)
//            .navigationBarItems(leading:
//                NavigationLink(destination: SettingsView()) {
//                    Image(systemName: "gear")
//                }
//            )
            
        }
    }
}

#Preview {
    HomeView()
}
