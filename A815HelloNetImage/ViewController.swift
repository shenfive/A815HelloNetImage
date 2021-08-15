//
//  ViewController.swift
//  A815HelloNetImage
//
//  Created by 申潤五 on 2021/8/15.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var contaner: UIView!
    @IBOutlet weak var theImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let start = Date().timeIntervalSince1970
        let imageAddress = "https://www.mirrormedia.com.tw/assets/images/20200515182647-44d2dc790fce36e05cd131b09da09bd6-mobile.jpg"
        if let imageURL = URL(string: imageAddress){
//            DispatchQueue.global().async {
//                do{
//                    let imageData = try Data(contentsOf: imageURL)
//                    DispatchQueue.main.async {
//                        self.theImageView.image = UIImage(data: imageData)
//                        print("loded:\(Date().timeIntervalSince1970 - start)")
//                    }
//                }catch{
//                    print(error.localizedDescription)
//                }
//            }
            
            theImageView.kf.setImage(with: imageURL)
            
            print("next:\(Date().timeIntervalSince1970 - start)")
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        theImageView.clipsToBounds = true
        theImageView.layer.cornerRadius = theImageView.frame.size.height / 2
        theImageView.layer.borderColor = UIColor.black.cgColor
        theImageView.layer.borderWidth = 1
        
        contaner.layer.cornerRadius = theImageView.frame.size.height / 2
        
        contaner.clipsToBounds = false
        contaner.layer.shadowRadius = 20
        contaner.layer.shadowColor = UIColor.gray.cgColor
        contaner.layer.shadowOffset = CGSize(width: 10, height: 10)
        contaner.layer.shadowOpacity = 0.6
    }

}

