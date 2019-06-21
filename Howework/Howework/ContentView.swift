//
//  ContentView.swift
//  Howework
//
//  Created by Alexey Ozerov on 21.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State private var selection = 0
    
    var body: some View {
        TabbedView(selection: $selection) {
            Feed()
                .tabItemLabel(
                    VStack {
                        Image("feed")
                        Text("Feed")
                    }
                )
                .tag(0)

            Benchmark()
                .tabItemLabel(
                    VStack {
                        Image("speed" )
                        Text("Benchmark")
                    }
                )
                .tag(1)

           Profile()
                .tabItemLabel(
                    VStack {
                        Image("profile" )
                        Text("Profile")
                    }
                )
                .tag(2)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
