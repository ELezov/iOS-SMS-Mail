//
//  ViewController.swift
//  TestSMSandMail
//
//  Created by Eugene Lezov on 15.08.2018.
//  Copyright © 2018 Eugene Lezov. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {
    
    var actions = [ActionModel]()
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    enum Constants {
        static let defaultMail = "mail@gmail.com"
        static let defaultNumber = "000000000000"
        static let defaultSubject = "Test 2..."
        static let defaultBody = "You message here ..."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        initTable()
    }
    
    func initData() {
        actions.append(ActionModel(type: .actionTypeMail))
        actions.append(ActionModel(type: .actionTypeMailUsingURL))
        actions.append(ActionModel(type: .actionTypeSMS))
        actions.append(ActionModel(type: .actionTypeSMSUsingURL))
    }
    
    func initTable(){
        tableView.estimatedRowHeight = 180
        tableView.dataSource = self
        tableView.delegate = self
        tableView.contentInset = UIEdgeInsetsMake(100.0, 0.0, 0.0, 0.0)
        registerNib()
    }
    
    func registerNib() {
        let identifier = String(describing: ActionViewCell.self)
        let nib = UINib(nibName: identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: identifier)
        tableView.separatorStyle = .none
    }

}





