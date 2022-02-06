//
//  DawEdit.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/01/31.
//

/*Daw表示画面*/
import SwiftUI;

struct DawEdit: View{
    @ObservedObject private var trackModel = TrackModel();
    
    var body: some View {
        //Text("DawTest");
        //以下がトラック描画
        
        VStack(spacing: 5){
            ForEach(trackModel.items) { item in
                DawTrack(track: item);
            }
            
            ZStack(){
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 60, height:50)
                    //タップアクション
                    .onTapGesture {
                        trackModel.AddTrack()
                    }
                Text("+")
            }
            //DawTrack()
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
    }
}

struct DawEdit_Previews: PreviewProvider {
    static var previews: some View {
        DawEdit()
    }
}
