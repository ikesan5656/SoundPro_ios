//
//  DawEngine.swift
//  SoundPro_ios
//
//  Created by 池ノ谷優太 on 2022/02/06.
//

/*DAWの管理*/
import Foundation;
import AVFoundation;

class DawEngine{
    
    //メンバ変数
    //オーディオエンジン
    var engine: AVAudioEngine!;
    //プレイヤー
    var playerNode: AVAudioPlayerNode!;
    
    //イニシャライザ
    init(){
        //オーディオエンジン作成
        engine = AVAudioEngine();
        playerNode = AVAudioPlayerNode();
        //try? engine.start();
    }
    
    //デイニシャライザ
    deinit{
        //engine.stop();
    }
    
    //ワンショット音源を再生し、再生終了まで行う
    func PlayOneshot(){
        //URL取得
        let musicPath = Bundle.main.bundleURL.appendingPathComponent("PrivateAssets/shining_star.mp3");
        //オーディオファイルの読み込み
        let audioFile = try! AVAudioFile(forReading: musicPath);
        
        //アタッチ、接続
        engine.attach(playerNode);
        //ミキサー
        let mixer = engine.mainMixerNode;
        engine.connect(playerNode, to: mixer, format: audioFile.processingFormat);
        
        //スケジューリング
     
        playerNode.scheduleFile(audioFile, at: nil) {
            print("再生終了")
            //engine.disc
    
           
        }
        
        try? engine.start();
        playerNode.play()
        
        //print(audioFile);
        
        
    }
    
    func PlayEX(){
        
    }
    
    
    
    
}
