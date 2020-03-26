//
//  ViewController.swift
//  runescape
//
//  Created by Felix Hu on 26/3/20.
//  Copyright © 2020 Icekraks. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var thisUserField: UITextField!
    
    let RunescapeAPI = "http://services.runescape.com/m=hiscore_oldschool/index_lite.ws?player="
    
    override func viewDidLoad() {
    super.viewDidLoad()
      

    }

    @IBAction func runescapeHiscore(sender: AnyObject){
        let username = thisUserField.text!
//        var bigData: String = ""

        if(username.isEmpty){
            print("Empty Username!")
            return
        }
        
        let url = URL(string:RunescapeAPI+username)
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        task.resume()
        
        /*
            TODO: Storing the json from the HTTP request in a variable, then string splitting it
            so I can filter the data for a table of Runescape Stats. but when I attempt to do it,
            it doesn't wait for the data to arrive, and it just moves on with the stored data as nil.
        */
        
//        var bigDataArray = bigData?.components(separatedBy: ", ")
//        print(bigData);
//        print(bigDataArray);
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }



}
