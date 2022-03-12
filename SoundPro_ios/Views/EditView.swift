//
//  EditView.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/01/25.
//

import Foundation;
import SwiftUI;
import PartialSheet;

struct EditView: View {
    
    var dawEngine: DawEngine;
    //モーダルのフラグ
    @State private var isSheetPresented = false
    
    init(){
        dawEngine = DawEngine();
        
    }
    var body: some View {
        VStack{
            DawEdit().frame(width: UIScreen.main.bounds.width, alignment: .leading)
            Button(action: {
                isSheetPresented = !isSheetPresented
            }){
                Text("モーダル開く")
            }
            Spacer()
            /*Button(action: {
                dawEngine.PlayOneshot();
            }){
                Text("再生")
            }
            Button(action: {
                dawEngine.StopOneShot()
            }){
                Text("ストップ")
            }*/
        }
        //モーダル
        .partialSheet(isPresented: $isSheetPresented, content: DeploySoundModal.init);
    }
}

/*デバッグで確認するpreview*/
struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView();
    }
}
