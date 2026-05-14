//
//  Recoding.swift
//  MotionLogger
//
//  Created by 川岸遥奈 on 2026/05/14.
//

import SwiftUI

struct Recoding: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()

            VStack(spacing: 0) {
                Text("検証中")
                    .foregroundStyle(Color("text"))
                    .font(.largeTitle)
                    .padding()
                Text("現在のフィルタ")
                    .font(.headline)
                // 上の状態カード
                HStack(spacing: 20) {

                    ZStack {
                        Circle()
                            .fill(Color("Blue"))
                            .frame(width: 60, height: 60)

                        Image(systemName: "figure.walk")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 35)
                            .foregroundColor(Color("button"))
                    }

                    VStack(alignment: .leading) {
                        Text("現在の状態")
                            .font(.headline)
                            .foregroundStyle(Color("text"))

                        Text("歩行中")
                            .font(.title2)
                            .foregroundStyle(Color("text"))
                            .bold()

                    }
                    Spacer()
                    VStack() {
                        Text("認識中")
                            .padding(.horizontal, 14)
                            .padding(.vertical, 8)
                            .foregroundStyle(Color("White"))
                            .background(Color("button"))
                            .cornerRadius(10)
                        Text("02:45:00")
                    }

                }
                .padding()
                .background(Color("White"))
                .cornerRadius(20)
                HStack() {

                    VStack(spacing: 0) {

                        VStack(spacing: 16) {
                            Text("加速度(m/s²)")
                                .font(.title3)
                                .bold()
                                .foregroundStyle(Color("text"))

                            VStack() {
                                HStack(spacing: 16) {
                                    Text("X")
                                        .font(.caption2)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                    Spacer()
                                    // 数値
                                    Text("0.02")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                }
                                .padding(.horizontal)

                                HStack(spacing: 16) {
                                    Text("Y")
                                        .font(.caption2)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                    Spacer()
                                    // 数値
                                    Text("-9.81")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                }
                                .padding(.horizontal)

                                HStack(spacing: 16) {
                                    Text("Z")
                                        .font(.caption2)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                    Spacer()
                                    // 数値
                                    Text("0.15")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                }
                                .padding(.horizontal)
                            }

                        }
                        .background(Color("White"))
                        .frame(width: 150, height: 180)
                        .cornerRadius(50)
                        .padding()
                    }
                    VStack(spacing: 0) {

                        VStack(spacing: 16) {
                            Text("角度(度)")
                                .font(.title3)
                                .bold()
                                .foregroundStyle(Color("text"))

                            VStack() {
                                HStack(spacing: 16) {
                                    Text("Pitch(ピッチ)")
                                        .font(.caption2)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                    Spacer()
                                    // 数値
                                    Text("12.4°")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                }
                                .padding(.horizontal)

                                HStack(spacing: 16) {
                                    Text("Roll(ロール)")
                                        .font(.caption2)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                    Spacer()
                                    // 数値
                                    Text("-2.1°")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                }
                                .padding(.horizontal)

                                HStack(spacing: 16) {
                                    Text("Yaw(ヨー)")
                                        .font(.caption2)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                    Spacer()
                                    // 数値
                                    Text("184.5°")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundStyle(Color("text"))
                                }
                                .padding(.horizontal)
                            }

                        }
                        .background(Color("White"))
                        .frame(width: 180, height: 180)
                        .cornerRadius(50)
                    }
                }
                VStack() {
                    Text("リアルタイム加速度グラフ")

                }
                .background(Color("White"))
                .frame(width: 300, height: 180)
                .cornerRadius(50)

                // ボタン
                Button(action: {

                }) {
                    Text("計測終了")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("button"))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
            }
            .padding()

        }
    }
}

#Preview {
    Recoding()
}
