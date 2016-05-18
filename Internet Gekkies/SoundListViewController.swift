//
//  SoundListViewController.swift
//  Internet Gekkies
//
//  Created by Sem Schilder on 12/05/2016.
//  Copyright © 2016 D3 - Creative Agency. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class SoundListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButtonOut: UIBarButtonItem!
    
    var audioPlayer = AVAudioPlayer()
    var soundPath : String = ""
    var soundURL : String = ""
    var sounds: [Sound] = []
    var sound1 = Sound()
    var sound2 = Sound()
    var sound3 = Sound()
    var sound4 = Sound()
    var sound5 = Sound()
    var sound6 = Sound()
    var sound7 = Sound()
    var sound8 = Sound()
    var sound9 = Sound()
    var sound10 = Sound()
    var sound11 = Sound()
    var sound12 = Sound()
    var sound13 = Sound()
    var sound14 = Sound()
    var sound15 = Sound()
    var sound16 = Sound()
    var sound17 = Sound()
    var sound18 = Sound()
    var sound19 = Sound()
    var sound20 = Sound()
    var sound21 = Sound()
    var sound22 = Sound()
    var sound23 = Sound()
    var sound24 = Sound()
    var sound25 = Sound()
    var sound26 = Sound()
    var sound27 = Sound()
    var sound28 = Sound()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonOut.enabled = false
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        bannerView.adUnitID = "ca-app-pub-2406264984624429/9731672265"
        bannerView.rootViewController = self
        bannerView.loadRequest(GADRequest())
        
        sound1.name = "Plausibel"
        sound1.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("plausibel", ofType: "mp3")!)
        self.sounds.append(sound1)
        
        sound2.name = "Koekoek Jonguh"
        sound2.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Koekoek Jonguh", ofType: "mp3")!)
        self.sounds.append(sound2)
        
        sound3.name = "Dramatic Chipmunk"
        sound3.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Dramatic Chipmunk", ofType: "mp3")!)
        self.sounds.append(sound3)
        
        sound4.name = "Je moet gewoon kijken, hoe de baas 't doet hè"
        sound4.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("debaas", ofType: "mp3")!)
        self.sounds.append(sound4)
        
        sound5.name = "Dat doe je toch niet zo?"
        sound5.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("datdoejetochnietzo", ofType: "mp3")!)
        self.sounds.append(sound5)
        
        sound6.name = "Rondjes"
        sound6.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("rondjes", ofType: "mp3")!)
        self.sounds.append(sound6)
        
        sound7.name = "Blijf van m'n bier af"
        sound7.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("vanmijnbier", ofType: "mp3")!)
        self.sounds.append(sound7)
        
        sound8.name = "A je to"
        sound8.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("ajeto", ofType: "mp3")!)
        self.sounds.append(sound8)
        
        sound9.name = "Dat is f*cked up G"
        sound9.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("fuckedg", ofType: "mp3")!)
        self.sounds.append(sound9)
        
        sound10.name = "Jij komme hier in de Sittard jij praten zo tegen mij?"
        sound10.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("sittard", ofType: "mp3")!)
        self.sounds.append(sound10)
        
        sound11.name = "Leeg blik in de water"
        sound11.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("leegblik", ofType: "mp3")!)
        self.sounds.append(sound11)
        
        sound12.name = "Macho Man"
        sound12.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("macho", ofType: "mp3")!)
        self.sounds.append(sound12)
        
        sound13.name = "Net pindakaas gegeten"
        sound13.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("pindakaas", ofType: "mp3")!)
        self.sounds.append(sound13)
        
        sound14.name = "Nou, nee"
        sound14.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("nounee", ofType: "mp3")!)
        self.sounds.append(sound14)
        
        sound15.name = "Prijs de heer, rook wat meer! Aah niggu"
        sound15.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("niggu", ofType: "mp3")!)
        self.sounds.append(sound15)
        
        sound16.name = "Tom steekt vuurwerk af"
        sound16.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("tomvuurwerk", ofType: "mp3")!)
        self.sounds.append(sound16)
        
        sound17.name = "vies lachje"
        sound17.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("vieslachje", ofType: "mp3")!)
        self.sounds.append(sound17)
        
        sound18.name = "WHAT!! No money?? Heeere SUCKACOCK!!!"
        sound18.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("nomoney", ofType: "mp3")!)
        self.sounds.append(sound18)
        
        sound19.name = "Altijd dat gezeik met jou"
        sound19.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("gezeik", ofType: "mp3")!)
        self.sounds.append(sound19)
        
        sound20.name = "Bingo mevrouw"
        sound20.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("bingo", ofType: "mp3")!)
        self.sounds.append(sound20)
        
        sound21.name = "Bob de huisbaas"
        sound21.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("bobhuis", ofType: "mp3")!)
        self.sounds.append(sound21)
        
        sound22.name = "DATZIEJETOCH"
        sound22.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("datziejetoch", ofType: "mp3")!)
        self.sounds.append(sound22)
        
        sound23.name = "diadeem"
        sound23.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("diadeem", ofType: "mp3")!)
        self.sounds.append(sound23)
        
        sound24.name = "dikke taarten"
        sound24.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("taarten", ofType: "mp3")!)
        self.sounds.append(sound24)
        
        sound25.name = "Helemaal door elkaar heen gevrummeld"
        sound25.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("gevrummel", ofType: "mp3")!)
        self.sounds.append(sound25)
        
        sound26.name = "Ik hoef niet te tanken"
        sound26.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("tetanken", ofType: "mp3")!)
        self.sounds.append(sound26)
        
        sound27.name = "Een beetje stelen"
        sound27.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("stelen", ofType: "mp3")!)
        self.sounds.append(sound27)
        
        sound28.name = "Ik vind helemaal mooi"
        sound28.URL = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("helemaalmooi", ofType: "mp3")!)
        self.sounds.append(sound28)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sounds.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let sound = self.sounds[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = sound.name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let sound = self.sounds[indexPath.row]
        let audioNSURL = sound.URL
        self.audioPlayer = try! AVAudioPlayer(contentsOfURL: audioNSURL)
        self.audioPlayer.play()
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let addSoundViewController = segue.destinationViewController as! AddSoundViewController
        addSoundViewController.soundListViewController = self
        
    }
}

