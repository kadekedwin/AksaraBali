//
//  AntukAksaraView.swift
//  AksaraBali
//
//  Created by Kadek Edwin on 27/08/23.
//

import SwiftUI

struct AntukAksaraView: View {
    
    @State private var focusedField = false
    @State private var inputText = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Enter Text")
                    .padding(.leading)
                    .padding(.top)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.black)
                    .frame(height: 204)
                    .padding(.horizontal)
                    .overlay {
                        TextEditor(text: $inputText)
                            .frame(height: 200)
                            .cornerRadius(8)
                            .padding(.horizontal, 18)
                    }
                
                Button {
                    
                } label: {
                    
                }
                .frame(maxWidth: .infinity)
                .background(.blue)
                
            }
        }
        .navigationBarTitle("Antuk Aksara", displayMode: .inline)
    }
}

#Preview {
    AntukAksaraView()
}
