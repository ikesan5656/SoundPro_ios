//
//  DeploySoundModal.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/03/12.
//

import SwiftUI

//DAWに配置する音源選択モーダル

struct DeploySoundModal: View {
    
    @ObservedObject private var manager = DeploySoundManager.shared;
    
    var body: some View {
        VStack{
            Text("モーダルビュー");
            Text("\(manager.currentCategory)")
            
        }.frame(height: 100)
    }
}

struct DeploySoundModal_Previews: PreviewProvider {
    static var previews: some View {
        DeploySoundModal()
    }
}
