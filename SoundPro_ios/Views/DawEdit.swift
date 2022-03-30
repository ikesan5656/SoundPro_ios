//
//  DawEdit.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/01/31.
//

/*Daw表示画面*/
import SwiftUI;

struct DawEdit: View{
    
    @ObservedObject private var trackModel = TrackModel.shared;
    //@ObservedObject private var trackModel = TrackModel();
    
    var body: some View {
        //Text("DawTest");
        //以下がトラック描画
        
        HStack(alignment: .top, spacing: 5 ){
            
            DawTrackCategorys();
            DawTrackBars();

        }
        

        
    }
}

struct DawEdit_Previews: PreviewProvider {
    static var previews: some View {
        DawEdit()
    }
}
