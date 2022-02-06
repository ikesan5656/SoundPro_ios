//
//  ReduxTestView.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/02/01.
//

import SwiftUI

struct ReduxTestView: View {
    
    @EnvironmentObject var store: Store
  
    
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("\(store.appState.counter)")
            Button("add") {
                store.Dispatch(.Increment)
            }
            
            Text("\(store.testSlice.appState.counter)")
            Button("add") {
                store.testSlice.Dispatch(.Increment)
                self.store.objectWillChange.send()
                
            }
        }
    }
}

struct ReduxTestView_Previews: PreviewProvider {
    static var previews: some View {
        ReduxTestView()
    }
}
