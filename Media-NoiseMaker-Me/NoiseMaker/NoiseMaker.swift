//
//  NoiseMaker.swift
//  NoiseMaker
//
//  Created by youxinyu on 15/11/2.
//  Copyright © 2015年 yogayu.github.io. All rights reserved.
//
import AVFoundation
//  Model 封装行为
class NoiseMaker{
    // lesson 7
    // 问题：6中使用了四个AVAudioPlayer(code semll)，可不可以使用数据结构进行优化？
    // 简洁很多.EM: designated and convenience initializers
    let audioFileName = ["guitar","applause","monster","bubbles"]
    var players = [AVAudioPlayer]()
    
    init(){
        for filename in audioFileName{
            let audioPath = NSString(string: NSBundle.mainBundle().pathForResource(filename, ofType: "wav")!)
            do{
            players.append( try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!))
            }catch{print(error)}
        }
    }
    /* 
    // 更简洁的写法，但是return有问题
    var players:[AVAudioPlayer]
    init(){
        players = audioFileName.map({ filename in
            let audioPath = NSString(string: NSBundle.mainBundle().pathForResource(filename, ofType: "wav")!)
              do{  return try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!)
             }catch{ print(error)}
        })
    }
    */
    func playGuitarSound(){
        players[0].play()
    }
    func playApplauseSound(){
        players[1].play()
    }
    func playMonsterSound(){
        players[2].play()
    }
    func playBubblesSound(){
        players[3].play()
    }

    /* lesson 6
    // 问题:5中，AVAudioPlayer对象，是不是会被creat很多次？每次play调用，AVAudioPlayer is instantiated.
    private let guitarPlayer:AVAudioPlayer
    private let applausePlayer:AVAudioPlayer
    private let monsterPlayer:AVAudioPlayer
    private let bubblesPlayer:AVAudioPlayer
    // 解决，一次初始化
    init(){
        let audioPath = NSString(string: NSBundle.mainBundle().pathForResource("guitar", ofType: "wav")!)
        do{ guitarPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!)
        }catch{ print(error)}

        let audioPath2 = NSString(string: NSBundle.mainBundle().pathForResource("applause", ofType: "wav")!)
        do{ applausePlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath2 as String)!)
        }catch{ print(error)}
        
        let audioPath3 = NSString(string: NSBundle.mainBundle().pathForResource("monster", ofType: "wav")!)
        do{ monsterPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath3 as String)!)
        }catch{ print(error)}
        
        let audioPath4 = NSString(string: NSBundle.mainBundle().pathForResource("bubbles", ofType: "wav")!)
        do{ bubblesPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath4 as String)!)
        }catch{ print(error)}
    }
    // Problem:return from initializer without initializing all stored properties.
    func playGuitarSound(){
        guitarPlayer.play()
    }
    
    func playApplauseSound(){
        applausePlayer.play()
    }
    
    func playMonsterSound(){
        monsterPlayer.play()
    }
    
    func playBubblesSound(){
        bubblesPlayer.play()
    }
*/


    /*
    // lesson 5
    private let guitarPlayer:AVAudioPlayer?
    private let applausePlayer:AVAudioPlayer?
    private let monsterPlayer:AVAudioPlayer?
    private let bubblesPlayer:AVAudioPlayer?
    
    func playGuitarSound(){
        let audioPath = NSString(string: NSBundle.mainBundle().pathForResource("guitar", ofType: "wav")!)
     
        do{
            // instantiated
            guitarPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!)
            guitarPlayer!.play()
        }catch{
            print(error)
        }
    }
    
    func playApplauseSound(){
        let audioPath = NSString(string: NSBundle.mainBundle().pathForResource("applause", ofType: "wav")!)
  
        do{
            applausePlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!)
            applausePlayer!.play()
        }catch{
            print(error)
        }
    }
    
    func playMonsterSound(){
        let audioPath = NSString(string: NSBundle.mainBundle().pathForResource("monster", ofType: "wav")!)
        
        do{
            monsterPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!)
            monsterPlayer!.play()
        }catch{
            print(error)
        }
    }
    
    func playBubblesSound(){
        let audioPath = NSString(string: NSBundle.mainBundle().pathForResource("bubbles", ofType: "wav")!)
       
        do{
            bubblesPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!)
            bubblesPlayer!.play()
        }catch{
            print(error)
        }
    }
    */
    
    /*
    //lesson 5-ME
    // 传入播放名称，有问题，无法播放
    var player:AVAudioPlayer?
    let sound:String?
    
    init(sound:String){
    self.sound = sound
    }
    
    func playSound(){
    let audioPath = NSString(string: NSBundle.mainBundle().pathForResource(sound, ofType: "wav")!)
    
    do{
    player = try AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String)!)
    player!.play()
    print("played")
    }catch{
    print(error)
    }
    }
    */
}