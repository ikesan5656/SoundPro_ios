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
    
    //種別タップ
    func TapCategory(){
        print("カテゴリータップ")
    }
    //小節タップ
    func TapMusicalBar(){
        print("小節タップ")
    }
    
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
            .gesture(TapGesture().onEnded{
                TapCategory()
            })
            
            //Text("\(track.measure[0].name)")
            //小節
            ForEach(0..<track.musicalBars.count) { index in
                ZStack{
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 60, height:50)
                    Text("\(track.musicalBars[index].name)")
                
                }
                .gesture(TapGesture().onEnded{
                    TapMusicalBar()
                })
            }
            
                   
        }
        

    }
}

/*struct DawTrack_Previews: PreviewProvider {
    static var previews: some View {
        DawTrack()
    }
}*/
