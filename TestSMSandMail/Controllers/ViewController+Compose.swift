//
//  ViewController+Compose.swift
//  TestSMSandMail
//
//  Created by Eugene Lezov on 23.08.2018.
//  Copyright © 2018 Eugene Lezov. All rights reserved.
//

import Foundation
import MessageUI

// MARK: - MFMailComposeViewControllerDelegate

extension ViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        // You can handle different state here
        switch result {
        case .sent:
            break
        case .cancelled:
            break
        case .failed:
            break
        case .saved:
            break
        }
        controller.dismiss(animated: true, completion: nil)
    }
}


// MARK: - MFMessageComposeViewControllerDelegate

extension ViewController: MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        // You can handle different state here
        switch result {
        case .sent:
            break
        case .cancelled:
            break
        case .failed:
            break
        }
        controller.dismiss(animated: true, completion: nil)
    }
}
