//
//  DataManager.swift
//  HW2.9
//
//  Created by Kalabishka Ivan on 27.04.2021.
//

import Spring // в дата менеджере может быть фреймворк

class DataManager {
    
    static let shared = DataManager() //для возможности ссылаться на один объект
    let animations: [Spring.AnimationPreset] = [
        .FadeIn,
        .FadeInDown,
        .FadeInLeft,
        .FadeInRight,
        .FadeOut,
        .FadeOutIn,
        .Fall,
        .Flash,
        .FlipX,
        .FlipY,
        .Morph,
        .Pop,
        .Shake,
        .SlideDown,
        .SlideLeft,
        .SlideRight,
        .SlideUp,
        .Squeeze,
        .SqueezeDown,
        .SqueezeLeft,
        .SqueezeRight,
        .Swing,
        .Wobble,
        .ZoomIn,
        .ZoomOut
    ]
    let curves = Spring.AnimationCurve.allCases
     
//     массив возвращает все кейсы через геттер allCases  необходимо подписывать под протокол CaseItrabol (pods -> spring -> spring -> public enum AnimationCurve)

    
    private init() {} //  синглтон, запрет на рассинхрон, нельзя создать экземпля класса
}


