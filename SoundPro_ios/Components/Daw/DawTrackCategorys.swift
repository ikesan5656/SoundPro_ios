//
//  DawTrackCategory.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/02/27.
//

//トラックのカテゴリーを描画

import SwiftUI

struct DawTrackCategorys: View {
    
    @ObservedObject private var trackModel = TrackModel.shared;
    
    var body: some View {
       
        VStack(spacing: 5){
            ForEach(0..<trackModel.items.count, id: \.self) { trackIndex in
                ZStack{
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 60, height:50)
                    Text("\(trackModel.items[trackIndex].name)")
                }
            }
            ZStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 60, height:50)
                Text("+")
            }
        }
        
    }
}

struct DawTrackCategorys_Previews: PreviewProvider {
    static var previews: some View {
        DawTrackCategorys()
    }
}
