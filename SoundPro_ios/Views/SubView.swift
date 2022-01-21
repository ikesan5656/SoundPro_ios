//  サブビュー
//  SubView.swift
//  SoundPro_ios

import Foundation
import SwiftUI

struct SubView: View {
    
    let soundEffect = SoundEffect();
    @State var count = 10;
    @State var stringsArray = ["test1", "test2", "test3"];
    
    func CountUp(){
        //count += 1;
        stringsArray.append("test_add");
    }
    
    var body: some View {
        VStack{
            Text("EffectTestView").font(.largeTitle);
            HStack{
                Button(action: soundEffect.PlayAudio) {
                    Text("Effect再生")
                        .font(.largeTitle)
                        .foregroundColor(Color.red);
                    
                }
                .background(Color.mint);
                
                Button(action: soundEffect.StopAudio) {
                    Text("Effect再生終了")
                        .font(.largeTitle)
                        .foregroundColor(Color.red);
                    
                }
                .background(Color.mint);
            }
            HStack{
                ForEach(0 ..< stringsArray.count, id: \.self) { num in
                    Text(stringsArray[num]);
                }
            }
            Spacer();
            Button(action: CountUp) {
                Text("カウント+")
                    .font(.largeTitle)
                    .foregroundColor(Color.red);
                
            }
            Text("\(count)").font(.largeTitle);
            
        }
    }
}
