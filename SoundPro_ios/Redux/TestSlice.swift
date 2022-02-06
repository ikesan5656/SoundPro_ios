//
//  TestSlice.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/02/02.
//

import Foundation
import SwiftUI
class TestSlice: ObservableObject{
    
    enum Action {
        case Increment
    }

    
    struct AppState {
        var counter = 100;
    }
    
    class Reducer: ObservableObject {
        func Update(_ appState: inout AppState, _ action: Action) {
            switch action {
                case .Increment:
                    appState.counter += 1
                   
            }
        }
    }
    
    var reducer: Reducer
    @Published var appState: AppState
    
    init(){
        self.appState = AppState()
        self.reducer = Reducer()
    }
    
    func Dispatch(_ action: Action) {
        self.reducer.Update(&appState, action)
    }
}
