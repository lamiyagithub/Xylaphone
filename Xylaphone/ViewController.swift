//
//  ViewController.swift
//  Xylaphone
//
//  Created by ddukk17 on 03.11.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    var sound = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func button_1(_ sender: UIButton) {
        
        playing(song: sound[0])
    }
    
    
    @IBAction func button_2(_ sender: UIButton) {
        
        playing(song: sound[1])
        
    }
    
            
    @IBAction func button_3(_ sender: UIButton) {
        
        playing(song: sound[2])
    }
    
            
    @IBAction func button_4(_ sender: UIButton) {
        playing(song: sound[3])
    }
    
    
    @IBAction func button_5(_ sender: UIButton) {
        playing(song: sound[4])
    }
    
    
    @IBAction func button_6(_ sender: Any) {
        playing(song: sound[5])
    }
    
    @IBAction func button_7(_ sender: UIButton) {
        playing(song: sound[6])
    }
    
    
    func playing(song:String){
    
        guard let url = Bundle.main.url(forResource: song, withExtension: "wav")
        else{
            return
        }
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }
        catch{
            
        }
   }
}
    

    
    

