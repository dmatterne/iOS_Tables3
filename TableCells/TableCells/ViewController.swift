//
//  ViewController.swift
//  TableCells
//
//  Created by Stannis Baratheon on 03/10/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var computers = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        computers = ["Mac Plus", "Bondi iMac", "iMac Flat Panel", "Mac Pro", "Mac Mini", "iMac Aluminium", "PowerBook 100", "PowerBook Duo", "PowerBook G4", "White MacBook", "MacBook 13", "MacBook Air"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  computers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MyTableViewCell
            

        let row = indexPath.row
//        let computerNameLabel = cell.viewWithTag(1) as! UILabel
//        computerNameLabel.text = computers[row]
        
        cell.nameValueLabel.text = computers[row]
        
        
//        let modelLabel = cell.viewWithTag(2) as! UILabel
        if row < 6 {
//            modelLabel.text = "Desktop"
            cell.typeValueLabel.text = "Desktop"
        }
        else{
//            modelLabel.text = "Portable"
            cell.typeValueLabel.text = "Portable"
        }
        let imageName = computers[row]
        let fullImageName = imageName + ".png"
        let myImage = UIImage(named:fullImageName)
//        let computerImageView = cell.viewWithTag(3) as! UIImageView
//         computerImageView.image = myImage
        cell.image2.image = myImage
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}

