//
//  TimeCounter.swift
//  loginPersoneSwiftUI
//
//  Created by Максим Гурков on 11.05.2022.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var counter = 3
    var timer: Timer?
    var buttonTitle = "Запуск"

    func starTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(updateCounter),
                                         userInfo: nil,
                                         repeats: true)
        }
        buttonDidTapped()
    }

    private func buttonDidTapped() {
        if buttonTitle == "Перезапуск" {
            counter = 3
            buttonTitle = "Запуск"
        } else {
            buttonTitle = "Oтсчет..."
        }
        objectWillChange.send(self)
    }

    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Перезапуск"
        }
        objectWillChange.send(self)
    }

    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}

