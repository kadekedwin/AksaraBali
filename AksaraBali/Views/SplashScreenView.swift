//
//  SplashScreenView.swift
//  AksaraBali
//
//  Created by Kadek Edwin on 29/08/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var goHomeView = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if goHomeView {
            HomeView()
        } else {
            VStack {
                VStack {
                    Image("omswastyastu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .padding(.bottom)
                }
                .scaleEffect(self.size)
                .opacity(self.opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.goHomeView = true
                }
            }
        }
        
    }
}

#Preview {
    SplashScreenView()
}
