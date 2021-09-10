//
//  DetailViewController.swift
//  TwoTableViews
//
//  Created by Mac on 08/07/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
