//
//  Store.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/02/01.
//

import Foundation






class Store: ObservableObject{
    
    enum Action {
        case Increment
    }
    
    struct AppState {
        var counter = 10;
    }
    
    class Reducer {
        func Update(_ appState: inout AppState, _ action: Action) {
            switch action {
                case .Increment:
                    appState.counter += 1
                
            }
        }
    }
    var reducer: Reducer
    
    @Published var appState: AppState
    @Published var testSlice: TestSlice
    
    init(/*appState: AppState*//*, reducer: Reducer*/) {
        self.appState = AppState()
        self.reducer = Reducer()
        self.testSlice = TestSlice()
    }
    
    func Dispatch(_ action: Action) {
        self.reducer.Update(&appState, action)
    }
}
