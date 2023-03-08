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

struct Category: Hashable {
  let name, imageName: String
}

struct Destination: Hashable {
  let country, city, imageName: String
}

struct Restaurant: Hashable {
  let name, rate, city, country, categiry, imageName, price: String
}

struct User: Hashable {
  let name, imageName: String
}

struct DiscoverCategoriesView: View {
  let categories: [Category] = [
    .init(name: "Art", imageName: "paintpalette.fill"),
    .init(name: "Sport", imageName: "sportscourt.fill"),
    .init(name: "Live Events", imageName: "music.mic"),
    .init(name: "Food", imageName: "fork.knife"),
    .init(name: "History", imageName: "books.vertical.fill"),
  ]
  
  var body: some View {
    ScrollView (.horizontal, showsIndicators: false) {
      HStack (alignment: .top, spacing: 4) {
        ForEach(categories, id: \.self) { category in
          VStack (alignment: .center, spacing: 4) {
            Image(systemName: category.imageName)
              .font(.system(size: 20))
              .foregroundColor(.white)
              .frame(width: 60, height: 60)
              .background(Color.gray)
              .cornerRadius(.infinity)
              .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
            
            Text(category.name)
              .font(.system(size: 12, weight: .semibold))
              .multilineTextAlignment(.center)
          }.frame(width: 70)
        }
      }.padding(.horizontal)
    }
  }
}

struct PopularDestinationsView: View {
  let destinations: [Destination] = [
    .init(country: "France", city: "Paris", imageName: "eiffel_tower"),
    .init(country: "Japan", city: "Tokyo", imageName: "japan"),
    .init(country: "US", city: "New York", imageName: "new_york")
  ]
  
  
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
          ForEach(destinations, id:\.self) { destination in
            VStack(alignment: .leading, spacing: 0) {
              
              Image(destination.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 125)
                .cornerRadius(4)
                .padding(6)
              
              
              VStack(alignment: .leading) {
                Text(destination.city)
                  .font(.system(size: 12, weight: .semibold))
                
                Text(destination.country)
                  .font(.system(size: 12, weight: .regular))
                  .foregroundColor(.gray)
              }.padding(.horizontal, 12)
                .padding(.bottom, 8)
            }
            .background(Color(.init(white: 0.9, alpha: 1)))
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
  let restaurants: [Restaurant] = [
    .init(name: "Japan's Finest Tapas", rate: "4.7", city: "Tokyo", country: "Japan", categiry: "Sushi", imageName: "tapas", price: "$$"),
    .init(name: "Bar & Grill", rate: "4.4", city: "New York", country: "US", categiry: "Bar", imageName: "bar_grill", price: "$$$")
  ]
  
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
      
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 8) {
          ForEach(restaurants, id:\.self) { restaurant in
            HStack(spacing: 8) {
              Image(restaurant.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
                .padding(.leading, 6)
                .padding(.vertical, 6)
                
              
              VStack(alignment: .leading, spacing: 6) {
                HStack {
                  Text(restaurant.name)
                    .font(.system(size: 10, weight: .semibold))
                  
                  Spacer()
                  
                  Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                      .foregroundColor(.gray)
                      .font(.system(size: 14))
                      .padding(.horizontal, 8)
                  })
                }
                
                HStack {
                  Image(systemName: "star.fill")
                  
                  Text(restaurant.rate + " • " + restaurant.categiry + " • $$")
                }.font(.system(size: 9))
                  
                
                Text(restaurant.city + ", " + restaurant.country)
                  .font(.system(size: 10, weight: .semibold))
              }.padding(.leading, 2)
            }
            .background(Color(.init(white: 0.9, alpha: 1)))
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
  let users: [User] = [
    .init(name: "Amy Adams", imageName: "amy"),
    .init(name: "Billy Childs", imageName: "billy"),
    .init(name: "Sam Smith", imageName: "sam"),
  ]
  
  
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
      HStack (spacing: 12) {
        ForEach (users, id: \.self) { user in
          VStack {
            Image(user.imageName)
              .resizable()
              .frame(width: 50, height: 50)
              .cornerRadius(.infinity)
              .shadow(color: .gray, radius: 4, x: 0.0, y: 1.5)
            
            Text(user.name)
              .font(.system(size: 11, weight: .semibold))
              .multilineTextAlignment(.center)
          }
            .frame(width: 60)
            .padding(.bottom)
        }
      }.padding(.horizontal)
    }
  }
}
