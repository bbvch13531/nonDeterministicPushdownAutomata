//
//  Stage.swift
//  NonDeterministicPushdownAutomata
//
//  Created by KyungYoung Heo on 23/02/2019.
//  Copyright © 2019 KyungYoung Heo. All rights reserved.
//
import SwiftTemplateLibrary

struct Stage {
	var cur: StateID
	var tapeIdx: Int
	var stk: Stack<Character>
}
