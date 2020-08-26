//
//  ViewController.swift
//  TweetSense
//
//  Created by Jeremy Rufo on 08/25/2020
//  Copyright © 2020 JRufo. All rights reserved.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!

    // Instantiation using Twitter's OAuth Consumer Key and secret
    private var swifter: Swifter!

    private var secretDictionary: NSDictionary! {
        didSet {
            if let key = secretDictionary?.object(forKey: "TWITTER_CONSUMER_KEY") as? String,
               let secret = secretDictionary?.object(forKey: "TWITTER_CONSUMER_SECRET") as? String {
                self.swifter = Swifter(consumerKey: key, consumerSecret: secret)
            }

        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        getSecrets()
    }

    @IBAction func predictPressed(_ sender: Any) {

        
    }
}

extension ViewController {

    /** Get our plist */
    private func getSecrets() {

        if let path = Bundle.main.path(forResource: "Keys.secrets", ofType: "plist") {
           secretDictionary = NSDictionary(contentsOfFile: path)
        }
    }
}
