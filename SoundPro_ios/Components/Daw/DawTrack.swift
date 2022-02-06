//
//  DawTrack.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/01/31.
//
//Dawのトラックコンポーネント

import SwiftUI

struct DawTrack: View {
    
    @ObservedObject var track: TrackData;
    
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        
        HStack(){
            //トラック種別
            ZStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 60, height:50)
                Text("\(track.name)")
                
            }
            //Text("\(track.measure[0].name)")
            //小節
            ForEach(0..<track.measure.count) { index in
                ZStack{
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 60, height:50)
                    Text("\(track.measure[index].name)")
                
                }
            }
            
                        //ノード
        }
        
        VStack{
            
        }
    }
}

/*struct DawTrack_Previews: PreviewProvider {
    static var previews: some View {
        DawTrack()
    }
}*/
