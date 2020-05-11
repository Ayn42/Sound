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
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var cymbalButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    //ピアノのサウンドファイルを読み込んでプレイヤーを作る
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"pianoSound")!.data)
    
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"guitarSound")!.data)
    
    let cymbalSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"cymbalSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()}
        // Do any additional setup after loading the view
    
    //ドラムがタッチされた時に呼ばれる
    @IBAction func touchDownDrumButton(){
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        //ドラムの音を再生する
        drumSoundPlayer.play()}
    
    @IBAction func touchDownPianoButton(){
    //ピアノが鳴っている画像に切り替える
               pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
               //ピアノの音を巻き戻す
               pianoSoundPlayer.currentTime = 0
               //ピアノの音を再生する
               pianoSoundPlayer.play()}
    
    @IBAction func touchDownGuitarButton(){
                  guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
                  guitarSoundPlayer.currentTime = 0
                  guitarSoundPlayer.play()}
    
    @IBAction func touchDownCymbalButton(){
                  cymbalButton.setImage(UIImage(named: "cymbalPlayingImage"), for: .normal)
                  cymbalSoundPlayer.currentTime = 0
                  cymbalSoundPlayer.play()}
    
    //ドラムボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpDrumButton(){
        //ドラムがなっていない画像に切り替える
            drumButton.setImage(UIImage(named: "drumImage"), for: .normal)}
    @IBAction func touchUpPianoButton(){
            pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)}
    @IBAction func touchUpGuitarButton(){
             guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)}
    @IBAction func touchUpCymbalButton(){
             cymbalButton.setImage(UIImage(named: "cymbalImage"), for: .normal)}
    
    
}
