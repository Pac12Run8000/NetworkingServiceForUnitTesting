//
//  ViewController.swift
//  NetworkingServiceForUnitTesting
//
//  Created by Michelle Grover on 12/28/22.
//

import UIKit

class MainViewController: UIViewController {
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // API call using a singleton
        
//        NetworkingSingletonService.shared.fetchAPIResponse(url: HelperConstants.testUrl2) { result in
//            switch result {
//            case .failure(let err):
//                print("Here is the error: \(err.localizedDescription)")
//            case .success(let data):
//                print("MainViewController data:\(data)")
//            }
//        }
         
        
        
        
//        Refactored networking service that is not a singleton
        
        let networkingService = NetworkingServiceDependancyInjection()
        networkingService.fetchAPIResponse(url: HelperConstants.testUrl1) { result in
            switch result {
                case .success(let data):
                    print("Data: \(data)")
                    break
                case .failure(let error):
                    // handle error
                    break
            }
        }
         
        
    }


}

