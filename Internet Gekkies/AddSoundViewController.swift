//
//  AddSoundViewController.swift
//  Internet Gekkies
//
//  Created by Sem Schilder on 13/05/2016.
//  Copyright © 2016 D3 - Creative Agency. All rights reserved.
//

import UIKit
import GoogleMobileAds

class AddSoundViewController: UIViewController{
    
    @IBOutlet weak var iconimage: UIImageView!
    @IBOutlet weak var bannerAbout: GADBannerView!
    
    @IBAction func cancelButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.iconimage.layer.cornerRadius = 25.0
        self.iconimage.clipsToBounds = true
        bannerAbout.adUnitID = "ca-app-pub-2406264984624429/9104060265"
        //bannerAbout.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        print("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
        bannerAbout.rootViewController = self
        bannerAbout.loadRequest(GADRequest())
    }
}