//
//  EditView.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/01/25.
//

import Foundation;
import SwiftUI;

struct EditView: View {
    
    var dawEngine: DawEngine;
    
    init(){
        dawEngine = DawEngine();
        
    }
    var body: some View {
        VStack{
            DawEdit().frame(width: UIScreen.main.bounds.width, alignment: .leading)
            
            Button(action: {
                dawEngine.PlayOneshot();
            }){
                Text("再生")
            }
            Button(action: {
                dawEngine.StopOneShot()
            }){
                Text("ストップ")
            }
        }
    }
}

/*デバッグで確認するpreview*/
struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView();
    }
}
