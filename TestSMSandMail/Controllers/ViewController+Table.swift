//
//  ViewController+Table.swift
//  TestSMSandMail
//
//  Created by Eugene Lezov on 20.08.2018.
//  Copyright © 2018 Eugene Lezov. All rights reserved.
//

import Foundation
import UIKit

enum ActionType: String {
    case actionTypeMail = "Show Mail"
    case actionTypeMailUsingURL = "Show Mail Using Url"
    case actionTypeSMS = "Show SMS"
    case actionTypeSMSUsingURL = "Show SMS Using Url"
}

class ActionModel {
    var type: ActionType
    
    init(type: ActionType) {
        self.type = type
    }
}


// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ActionViewCell.self), for: indexPath) as? ActionViewCell else {
            fatalError("ActionViewCell doesn't exist")
        }
        cell.selectionStyle = .none
        cell.configure(model: actions[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actions.count
    }
    
    
}


// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = actions[indexPath.row];
        switch model.type {
            case .actionTypeMail:
                showEmail()
            case .actionTypeMailUsingURL:
                showEmailUsingURL()
            case .actionTypeSMS:
                showSMS()
            case .actionTypeSMSUsingURL:
                showSMSUsingURL()
        }
    }
}
