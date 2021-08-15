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
        
        theImageView.clipsToBounds = true
        theImageView.layer.cornerRadius = 15
        theImageView.layer.borderColor = UIColor.red.cgColor
        theImageView.layer.borderWidth = 5
        
        
        let start = Date().timeIntervalSince1970
        let imageAddress = "https://shop.r10s.jp/aikimania/cabinet/new/sw-1758_sp.jpg"
        if let imageURL = URL(string: imageAddress){
            DispatchQueue.global().async {
                do{
                    let imageData = try Data(contentsOf: imageURL)
                    DispatchQueue.main.async {
                        self.theImageView.image = UIImage(data: imageData)
                        print("loded:\(Date().timeIntervalSince1970 - start)")
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            print("next:\(Date().timeIntervalSince1970 - start)")
        }
    }


}

