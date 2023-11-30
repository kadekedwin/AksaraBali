//
//  CardView.swift
//  AksaraBali
//
//  Created by Kadek Edwin on 27/08/23.
//

import SwiftUI

struct CardView: View {
    
    @State var image: String
    @State var title: String
    @State var description: String
    @State var more: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 361, height: 210)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay {
                    ZStack(alignment: .bottom) {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(title)
                                    .font(.headline)
                                Spacer()
                                Text(more)
                                    .font(.subheadline)
                            }
                            Text(description)
                                .font(.caption)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background(.black)
                        .cornerRadius(20)
                        .padding()
                    }
                    .frame(maxHeight: .infinity, alignment: .bottom)
                }
        }
    }
}

#Preview {
    CardView(image: "AntukLatin", title: "Test", description: "Testo", more: "10.00")
}
