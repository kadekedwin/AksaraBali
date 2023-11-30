//
//  ContentSlider.swift
//  AksaraBali
//
//  Created by Kadek Edwin on 28/08/23.
//

import SwiftUI

struct contentSlider {
    var id = UUID()
    let title: String
    let desc: String
}

private let contentSliders: [contentSlider] = [
    contentSlider(title: "Aksara Bali", desc: "Aksara Bali inggih punika silih tunggil aksara daerah ring Indonesia sane antun kapiara olih krama Baline ngantos mangkin."),
    contentSlider(title: "Ngelestariang", desc: "Ngiring sareng sami ngelestariang Aksara Baline mangda tetep urip lan me Taksu tur lestari."),
    contentSlider(title: "Lorem", desc: "Lorem ipsum dolor sit amet."),
]

struct ContentSliderView: View {
    
    @State private var currentStep = 0
    
    var body: some View {
        TabView(selection: $currentStep) {
            ForEach(0..<contentSliders.count, id: \.self) { index in
                VStack(alignment: .leading) {
                    Text(contentSliders[index].title)
                        .font(.title.weight(.bold))
                        .padding(.bottom)
                    Text(contentSliders[index].desc)
                        .font(.body)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(height: 200, alignment: .top)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ContentSliderView()
}
