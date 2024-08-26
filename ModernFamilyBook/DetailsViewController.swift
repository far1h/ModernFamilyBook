//
//  DetailsViewController.swift
//  ModernFamilyBook
//
//  Created by Farih Muhammad on 26/08/2024.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedCharacter : Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedCharacter?.name
        jobLabel.text = selectedCharacter?.job
        profileImage.image = selectedCharacter?.image
    }
    

    
}
