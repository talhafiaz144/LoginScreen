//
//  ViewController.swift
//  LoginScreen
//
//  Created by Apple on 15/11/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Presenting the Login Screen View Controller
        self.presentLoginScreenViewController()
    }

    // Use this method whenever you want to present your Login Screen
    private func presentLoginScreenViewController() {
        let storyboard = UIStoryboard(name: "LoginScreen", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewControllerIdentifier")
        self.present(loginVC, animated: true, completion: nil)
    }


}

