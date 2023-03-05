//
//  ContentView.swift
//  DemoTravelDiscovery
//
//  Created by JAY KIM on 2023-03-05.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      ScrollView {
        DiscoverCategoriesView()
        
        PopularDestinationsView()
        
        PopularRestaurantsView()
        
        TrendingCreatorsView()
      }.navigationTitle("Discover")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct DiscoverCategoriesView: View {
  var body: some View {
    ScrollView (.horizontal, showsIndicators: false) {
      HStack (spacing: 8) {
        ForEach(0..<8, id: \.self) { num in
          VStack (spacing: 4) {
            Spacer()
              .frame(width: 60, height: 60)
              .background(Color.gray)
              .cornerRadius(.infinity)
              .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
            
            Text("Art")
              .font(.system(size: 12, weight: .semibold))
          }
        }
      }.padding(.horizontal)
    }
  }
}

struct PopularDestinationsView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Popular destinations")
          .font(.system(size: 12, weight: .semibold))
        
        Spacer()
        
        Text("See all")
          .font(.system(size: 12, weight: .semibold))
      }.padding(.horizontal)
        .padding(.top)
      
      
      ScrollView(.horizontal, showsIndicators: false){
        HStack(spacing: 8) {
          ForEach(0..<4, id:\.self) { num in
            Spacer()
              .frame(width: 125, height: 150)
              .background(Color.gray)
              .cornerRadius(5)
              .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
              .padding(.bottom)
          }
        }.padding(.horizontal)
      }
    }
  }
}

struct PopularRestaurantsView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Popular places to eat")
          .font(.system(size: 12, weight: .semibold))
        
        Spacer()
        
        Text("See all")
          .font(.system(size: 12, weight: .semibold))
      }.padding(.horizontal)
        .padding(.top)
      
      
      ScrollView(.horizontal, showsIndicators: false){
        HStack(spacing: 8) {
          ForEach(0..<4, id:\.self) { num in
            Spacer()
              .frame(width: 200, height: 65)
              .background(Color.gray)
              .cornerRadius(5)
              .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
              .padding(.bottom)
          }
        }.padding(.horizontal)
      }
    }
  }
}

struct TrendingCreatorsView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Trending Creators")
          .font(.system(size: 12, weight: .semibold))
        Spacer()
        
        Text("See all")
          .font(.system(size: 12, weight: .semibold))
      }.padding(.horizontal)
        .padding(.top)
    }
    
    ScrollView (.horizontal, showsIndicators: false) {
      HStack (spacing: 8) {
        ForEach (0..<8, id: \.self) { num in
          Spacer()
            .frame(width: 60, height: 60)
            .background(Color.gray)
            .cornerRadius(.infinity)
            .shadow(color: .gray, radius: 4, x: 0.0, y: 1.5)
            .padding(.bottom)
        }
      }.padding(.horizontal)
    }
  }
}
