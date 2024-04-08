//
//  PrescriptionWindow.swift
//  SleekCare
//
//  Created by Nabeel on 28/01/24.
//

import UIKit
//import Alamofire

class PrescriptionWindow: UIViewController{
    
    
    let penButton = UIBarButtonItem(image: UIImage(named: "pen"), style: .plain, target: self, action: #selector(buttonTapped(_:)))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.navigationBar.tintColor = .blue
//
//        // Customize the title of the back button
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: #selector(buttonTapped(_:)))
//        navigationController?.navigationItem.leftBarButtonItem = navigationItem.backBarButtonItem

                 navigationbar()
//        changeLabel()
//        mvc.changeLabel()
        navigationItem.backBarButtonItem?.tag = 5
    }
    
//    @objc func buttonTapped(_ sender: UIBarButtonItem) {
//        switch sender.tag {
//        case 5:
//            print("button 5 is tapped")
//            navigationController?.navigationBar.tintColor = .white
//
//        default:
//            break
//        }
//    
//    
//    }
    
    func navigationbar(){
        //resizing print button
                let image = UIImage(named: "Save")
                let resizedImage = image?.resized(to: CGSize(width: 35, height: 35))
                
                
                let navBarBackgroundView = UIView(frame: CGRect(x: 0, y: -UIApplication.shared.statusBarFrame.height, width: view.frame.size.width, height: 80 + UIApplication.shared.statusBarFrame.height))
                        navBarBackgroundView.backgroundColor = UIColor(named: "NavigationBarColor")
                print(80 + UIApplication.shared.statusBarFrame.height)

                
                navigationController?.navigationBar.addSubview(navBarBackgroundView)
                        navigationController?.navigationBar.sendSubviewToBack(navBarBackgroundView)

                navigationController?.navigationBar.barTintColor = UIColor.white // Set to clear, as the custom background view will provide the color
                        navigationController?.navigationBar.tintColor = .white // Set the color for back button, title, and other items.
                        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        //
                
             
        //        let customNavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 74))
        //        customNavigationBar.barTintColor = UIColor.cyan
                navBarBackgroundView.tintColor = .white // Set the color for back button, title, and other items.
        //              customNavigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        //
        //              // Add the custom navigation bar to the view
                      view.addSubview(navBarBackgroundView)
                      

                 // Create your three buttons
                 let sendButton = UIBarButtonItem(image: UIImage(named: "Save"), style: .plain, target: self, action: #selector(buttonTapped(_:)))
        let backButton = UIBarButtonItem(image: UIImage(named: "Vector"), style: .plain, target: self, action: #selector(buttonTapped(_:)))

                
            
                // Create an attributed string for the button's title with bold font
                let attributes: [NSAttributedString.Key: Any] = [
                          .font: UIFont.boldSystemFont(ofSize: 25), // Adjust the font size as needed
                          .foregroundColor: UIColor.white
                      ]

                
                 //UILabel
                let titleLabel = UILabel()
                        titleLabel.text = "Title"
                        titleLabel.textColor = .white

                
                 // Set the tag for each button to identify them
                
                 sendButton.tag = 6
        backButton.tag = 5
                 // Set the buttons as the right bar button items
                 navigationItem.rightBarButtonItems = [sendButton]
                navigationItem.leftBarButtonItems = [backButton]
             }
    
    
    @objc func buttonTapped(_ sender: UIBarButtonItem) {
        switch sender.tag {
        case 5:
                        print("button 5 is tapped")
            _ = navigationController?.popViewController(animated: true)

            
        case 6:
            // Handle Button 1 tap event here
            print("Button 6 tapped!")
            
//            let image = UIImage(named: "your_image_name")
//            let imageData = image?.jpegData(compressionQuality: 0.8)
//
//            if let base64String = imageData?.base64EncodedString() {
//                let urlString = ""
//                let serverKey = "YOUR_SERVER_KEY"
//                let deviceToken = "DEVICE_TOKEN"
//
//                let parameters: [String: Any] = [
//                    "message": [
//                        "token": deviceToken,
//                        "data": [
//                            "image_base64": base64String
//                        ]
//                    ]
//                ]
//
//                let headers: HTTPHeaders = [
//                    "Authorization": "Bearer \(serverKey)",
//                    "Content-Type": "application/json"
//                ]
//
//                AF.request(urlString, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
//                    .responseJSON { response in
//                        // Handle the response
//                    }
//            }




        default:
            break
        }
    

   }
}
