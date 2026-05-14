//
//  HomeView.swift
//  MotionLogger
//
//  Created by 川岸遥奈 on 2026/05/11.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedMode = "なし"

    let filter = ["なし", "移動平均", "ローパス"]
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()

            VStack(spacing: 24) {

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

                    Text("認識中")
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                        .foregroundStyle(Color("White"))
                        .background(Color("button"))
                        .cornerRadius(10)
                }
                .padding()
                .background(Color("White"))
                .cornerRadius(20)

                // 情報欄
                VStack(alignment: .leading, spacing: 24) {

                    VStack(alignment: .leading, spacing: 16) {
                        Text("加速度(m/s²)")
                            .font(.title3)
                            .bold()
                            .foregroundStyle(Color("text"))

                        HStack() {
                            VStack(spacing: 16) {
                                Text("X")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(Color("text"))

                                // 数値
                                Text("0.02")
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(Color("text"))
                            }
                            .padding(10)
                            .frame(width: 100, height: 100)
                            .background(Color("White"))
                            .cornerRadius(20)

                            Spacer()
                            VStack(spacing: 16) {
                                Text("Y")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(Color("text"))
                                // 数値
                                Text("-9.81")
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(Color("text"))
                            }
                            .padding(10)
                            .frame(width: 100, height: 100)
                            .background(Color("White"))
                            .cornerRadius(20)

                            Spacer()

                            VStack(spacing: 16) {
                                Text("Z")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(Color("text"))
                                // 数値
                                Text("0.15")
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(Color("text"))
                            }
                            .padding(10)
                            .frame(width: 100, height: 100)
                            .background(Color("White"))
                            .cornerRadius(20)
                        }

                    }

                    Text("角度(度)")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color("text"))
                    VStack() {
                        HStack() {
                            Image(systemName: "arrowshape.left.arrowshape.right.fill")
                                .resizable()
                                .frame(width:28, height:16)
                                .foregroundStyle(Color("button"))
                            Text("Pitch(ピッチ)")
                            Spacer()
                            Text("12.4°")

                        }
                        Divider()
                                .background(Color("Blue"))
                        HStack() {
                            Image(systemName: "arrow.trianglehead.clockwise")
                                .resizable()
                                .frame(width:28, height:16)
                                .foregroundStyle(Color("button"))
                            Text("Roll(ロール)")
                            Spacer()
                            Text("-2.1°")

                        }
                        Divider()
                                .background(Color("Blue"))

                        HStack() {
                            Image(systemName: "location.circle")
                                .resizable()
                                .frame(width:28, height:16)
                                .foregroundStyle(Color("button"))
                            Text("Yaw(ヨー)")
                            Spacer()
                            Text("184.5°")

                        }
                    }
                    .padding(10)
                    .background(Color("White"))
                    .cornerRadius(20)

                    Text("フィルタ設定")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color("text"))
                    Picker("フィルタ設定", selection: $selectedMode) {

                                    ForEach(filter, id: \.self) { mode in
                                        Text(mode)

                                    }
                                }
                                .pickerStyle(.segmented)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()

                // ボタン
                Button(action: {

                }) {
                    Text("計測開始")
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
    HomeView()
}
