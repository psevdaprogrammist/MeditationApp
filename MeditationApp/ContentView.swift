//
//  ContentView.swift
//  MeditationApp
//
//  Created by Egor Korchagin on 12.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    init() {
        
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .systemGroupedBackground
        
    }
    
    var searchView: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 24).fill(Color(.systemGray5))
                .frame(height: 50)
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color(.systemGray4))
                    .padding(.horizontal, 20)
                TextField("Searh theme here", text: $searchText)
                Image(systemName: "mic")
                    .resizable()
                    .frame(width: 20, height: 25)
                    .foregroundColor(Color(.systemRed))
                    .padding(.horizontal, 20)
            }
        }.padding(.vertical, 50)
        .padding(.horizontal, 20)
    }
    
    
    var inProgressSectionView: some View {
        HStack {
            Text("In Progress")
                .font(.custom("Avenir-Heavy", size: 18))
            Spacer()
        }
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Welcome Back Egor")
                    .font(.custom("Avenir-Heavy", size: 30))
                Text("Ready to start your day?")
                    .font(.custom("Avenir-Medium", size: 18))
                    .foregroundColor(Color(.systemGray))
                searchView
                inProgressSectionView
            }.padding(24)
        }
        .background(Color(.systemGroupedBackground).ignoresSafeArea() )
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: Button {
            
        } label: {
            Image(systemName: "list.bullet")
        }, trailing: Button {
            
        } label: {
            Image(systemName: "bell")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }.accentColor(.primary)
    }
}
