//
//  CommunityViewController.swift
//  Sneakult
//
//  Created by STUDENT on 24/04/24.
//

import UIKit
import SwiftUI
class CommunityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        extractView()
    }
    

    func extractView() {
        let hostView = UIHostingController(rootView: CommunityView())
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(hostView.view)
        let constraints = [
            hostView.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostView.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            hostView.view.heightAnchor.constraint(equalTo: view.heightAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
   

}