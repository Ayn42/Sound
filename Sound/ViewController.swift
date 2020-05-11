//
//  ViewController.swift
//  Sound
//
//  Created by 福井彩乃 on 2020/05/11.
//  Copyright © 2020 Fukui Ayanon. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //ドラムがタップされた時に呼ばれる
    @IBAction func tapDumButton(){
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
}
