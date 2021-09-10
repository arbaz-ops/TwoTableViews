//
//  ViewController.swift
//  TwoTableViews
//
//  Created by Mac on 07/07/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let data1 = ["Tiger", "Elephant", "Lion"]
    let data2 = ["star fish", "shark", "jellyfish"]
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self
        tableView1.dataSource = self
        tableView2.delegate = self
        tableView2.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count: Int?
        switch tableView {
        case tableView1:
            count = data1.count
        case tableView2:
            count = data2.count
        default:
            break
        }
        return count!

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tableView1 {
            let cell = tableView1.dequeueReusableCell(withIdentifier: "MyTableViewCell") as? MyTableViewCell
            cell?.myLbl.text = data1[indexPath.row]
            return cell!
        }else if tableView == tableView2 {
            let cell = tableView2.dequeueReusableCell(withIdentifier: "SecondTableViewCell") as? SecondTableViewCell
            cell?.myLbl.text = data2[indexPath.row]
            return cell!
        }
        else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableView1 {
            let dVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
            dVC?.name = data1[indexPath.row]
            self.present(dVC! ,animated: true)
        } else if tableView == tableView2 {
            let dVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
            dVC?.name = data2[indexPath.row]
            self.navigationController?.present(dVC!, animated: true)
        }else {
            print("something went wrong")
        }
    }
    

}

