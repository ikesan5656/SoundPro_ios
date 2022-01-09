//
//  SoundEffect.swift
//  SoundPro_ios
//

import Foundation
import AVFoundation

//サウンドエフェクトクラス
class SoundEffect{
    //オーディオエンジン
    var engine: AVAudioEngine!;
    
    //プレイヤーノード
    var player: AVAudioPlayerNode!;
    
    //effectNode
    // delay = AVAudioUnitDelay();
    var reverb: AVAudioUnitReverb!;
    

    //var fileUrl = NSURL(fileURLWithPath: "/Users/Muukii/Desktop/sample.m4a")
    //input、output Node
    //var input = engine.inputNode;
    
    //イニシャライザ
    init() {
        //それぞれのインスタンスを作成
        engine = AVAudioEngine();
        player = AVAudioPlayerNode();
        reverb = AVAudioUnitReverb();
        
        //reverbの設定
        reverb.loadFactoryPreset(.largeRoom2);
        reverb.wetDryMix = 60;
    }
    
    //デイニシャライザ
    deinit {
        
    }
    
    /*メソッド*/
    func PlayAudio() {
        //音源ファイルのパス(ローカルver)
        let musicPath = Bundle.main.bundleURL.appendingPathComponent("shining_star.mp3");
        //オーディオファイルの読み込み
        let audioFile = try! AVAudioFile(forReading: musicPath);
        
        //if(audioFile) {
            
        //reverb
        reverb.loadFactoryPreset(.largeHall2);
            
        //エンジンにノードを繋げる
        engine.attach(player);
        engine.attach(reverb);
        
        engine.connect(player, to: reverb, format: audioFile.processingFormat);
        engine.connect(reverb, to: engine.outputNode, format: audioFile.processingFormat);
        
        do{
            try engine.start();
            player.scheduleFile(audioFile , at: nil, completionHandler: nil);
            player.play();
        }catch let error{
            print(error);
        }
            
        //}
    }
    
}


