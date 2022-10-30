//
//  ContentView.swift
//  DeepStateMap
//
//  Created by Leo Lashkevych on 2022-10-29.
//

import SwiftUI

struct Map: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> MapVC {
        return MapVC()
    }
    
    func updateUIViewController(_ uiViewController: MapVC, context: Context) {
        
    }
    
    typealias UIViewControllerType = MapVC
}

struct Feed: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> EmbedsViewController {
        return EmbedsViewController()
    }
    
    func updateUIViewController(_ uiViewController: EmbedsViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = EmbedsViewController
}

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView{
                    VStack{
                        Map()
                    }
                    .navigationBarTitle("Deep State UA")
            }
            .tabItem{
                Image(systemName: "house")
                Text("Map")
            }
            NavigationView{
                VStack{
                    Feed()
                }
                .navigationBarTitle("Feed")
            }
            .tabItem{
                Image(systemName: "info")
                Text("Feed")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
