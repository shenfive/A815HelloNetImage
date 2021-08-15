//
//  ViewController.swift
//  A815HelloNetImage
//
//  Created by 申潤五 on 2021/8/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageAddress = "https://shop.r10s.jp/aikimania/cabinet/new/sw-1758_sp.jpg"
        if let imageURL = URL(string: imageAddress){
            do{
                let imageData = try Data(contentsOf: imageURL)
                theImageView.image = UIImage(data: imageData)
            }catch{
                print(error.localizedDescription)
            }
        }
    }
    

}

