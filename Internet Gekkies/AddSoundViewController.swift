//
//  AddSoundViewController.swift
//  Internet Gekkies
//
//  Created by Sem Schilder on 13/05/2016.
//  Copyright © 2016 D3 - Creative Agency. All rights reserved.
//

import UIKit
//import AVFoundation

class AddSoundViewController: UIViewController{
    
    
    /* required init(coder aDecoder: NSCoder){
        var baseString : String = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)[0] as String
        var pathComponents = [baseString, "MyAudio.m4a"]
        var audioURL = NSURL.fileURLWithPathComponents(pathComponents)
        
        var session = AVAudioSession.sharedInstance()
        do{
        try session.setCategory(AVAudioSessionCategoryPlayAndRecord, withOptions: )
        }catch{
            print("ooops");
        }
        
        var recordSettings: [NSObject : AnyObject] = Dictionary()
        recordSettings[AVFormatIDKey] = kAudioFormatMPEG4AAC
        recordSettings[AVSampleRateKey] = 44100.0
        recordSettings[AVNumberOfChannelsKey] = 2
        
        self.audioRecorder = AVAudioRecorder(URL: audioURL, settings: recordSettings, error: nil)
        self.audioRecorder.meteringEnabled = true
        self.audioRecorder.prepareToRecord()
        
        super.init(coder: aDecoder)!
    }
 */
    
    @IBOutlet weak var soundNameInput: UITextField!
    @IBOutlet weak var recordButtonOutlet: UIButton!
 //   var audioRecorder: AVAudioRecorder
    
    var soundListViewController = SoundListViewController()
    
    @IBAction func cancelButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        let sound = Sound()
        sound.name = self.soundNameInput.text!
        
        self.soundListViewController.sounds.append(sound)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func recordButton(sender: AnyObject) {
        self.recordButtonOutlet.setTitle("Stop opnemen", forState: UIControlState.Normal)
    }
    
}