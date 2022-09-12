//
//  RipeningStageView.swift
//  Avocados
//
//  Created by Yuzu on 9/9/22.
//

import SwiftUI

struct RipeningStageView: View {
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages){ item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStageView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStageView(ripeningStages: ripeningData)
    }
}
