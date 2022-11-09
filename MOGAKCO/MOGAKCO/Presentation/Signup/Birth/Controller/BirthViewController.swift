//
//  BirthViewController.swift
//  MOGAKCO
//
//  Created by heerucan on 2022/11/10.
//

import UIKit

import RxSwift
import RxCocoa
import SnapKit
import Then

final class BirthViewController: BaseViewController {
    
    // MARK: - DisposeBag
    
    private let disposeBag = DisposeBag()
    
    // MARK: - Property
    
    private let nicknameView = NicknameView()
    private let nicknameViewModel = NicknameViewModel()
    
    // MARK: - LifeCycle
    
    override func loadView() {
        self.view = nicknameView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    // MARK: - UI & Layout
    
    override func setupDelegate() {
        nicknameView.setupDelegate(self)
    }
    
    // MARK: - Bind
    
    override func bindViewModel() {
        
        let input = NicknameViewModel.Input()
        let output = nicknameViewModel.transform(input)
        
    }
    
    // MARK: - Custom Method
    
    private func pushEmailView() {
//        let viewController = EmailViewController()
//        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: - UITextField Delegate

extension BirthViewController: UITextFieldDelegate { }
