//
//  SoundPro_iosApp.swift
//  SoundPro_ios

import SwiftUI

//メイン関数
@main
struct SoundPro_iosApp: App {
    
    var body: some Scene {
        WindowGroup {
            
            //let appState = AppState();
            //let reducer = Reducer();
            let store = Store(/*appState: appState*//*, reducer: reducer*/)
                
            ContentView().environmentObject(store)
        }
    }
}
