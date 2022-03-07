//
//  DawTrackBars.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/02/27.
//

import SwiftUI

struct DawTrackBars: View {
    @ObservedObject private var trackModel = TrackModel.shared;
    
    var body: some View {
        HStack{
            //トラック数
            ForEach(0..<trackModel.items.count, id: \.self) { trackIndex in
                VStack(spacing: 5){

                        //小節数
                        ForEach(0..<trackModel.items[trackIndex].musicalBars.count, id: \.self) { barIndex in
                            ZStack{
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 60, height:50)
                                Text("\(trackModel.items[trackIndex].musicalBars[barIndex].name)")
                            
                            }
                        }
                    

                }
            }
        }
    }
}

struct DawTrackBars_Previews: PreviewProvider {
    static var previews: some View {
        DawTrackBars()
    }
}
