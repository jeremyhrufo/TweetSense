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
    let swifter = Swifter(consumerKey: SecretKeys.TWITTER_CONSUMER_KEY,
                          consumerSecret: SecretKeys.TWITTER_CONSUMER_SECRET)

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func predictPressed(_ sender: Any) {

        
    }
}
