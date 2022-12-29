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
        NetworkingSingletonService.shared.fetchAPIResponse(url: HelperConstants.testUrl) { result in
            switch result {
            case .failure(let err):
                print("Here is the error: \(err.localizedDescription)")
            case .success(let data):
                print("Here is the data:\(data)")
            }
        }
        
    }


}

