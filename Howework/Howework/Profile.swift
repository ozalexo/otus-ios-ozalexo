//
//  Profile.swift
//  Howework
//
//  Created by Alexey Ozerov on 21.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import SwiftUI

struct Profile : View {
    
    @State var  showDetails = false
    
    var body: some View {
        NavigationView {
            Text("Profile")
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("Show details").font(.largeTitle)
            }
            
            if showDetails {
                Text("Additional details: profile name")
            }
        }
    }
}

#if DEBUG
struct Profile_Previews : PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
#endif
