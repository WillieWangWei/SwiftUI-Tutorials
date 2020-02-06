//
//  ContentView.swift
//  MacLandmarks
//
//  Created by 王炜 on 2020/2/6.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedLandmark: Landmark?
    
    var body: some View {
        NavigationView {
            NavigationMaster(selectedLandmark: $selectedLandmark)
            if selectedLandmark != nil {
                NavigationDetail(landmark: selectedLandmark!)
            }
        }
        .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
