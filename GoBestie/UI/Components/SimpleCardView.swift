//
//  SimpleCardView.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 25/07/22.
//

import SwiftUI

struct SimpleCardView: View {
    var title: String
    var caption: String
    var image: UIImage?
    var imageNamed: String?
    var shapeFallback: Bool = true
    var postShapeView: AnyView = AnyView(EmptyView())

    var body: some View {
        GeometryReader { geo in
            HStack {
                HStack {
                    if ( image != nil ) {
                        AnyView(ZStack {})
                    } else if ( imageNamed != nil ) {
                        Image(systemName: imageNamed!)
                            .font(.system(size: 25))
                            .foregroundColor(Color(AppColor().primary!))
                    } else if ( shapeFallback ) {
                        Circle()
                            .background(Circle().foregroundColor(.red))
                            .frame(width: 25, height: 25)
                    }
                    VStack(alignment: .leading) {
                        ThemedText(value: title, weight: .medium)
                            .foregroundColor(Color.init(hex: "000000"))
                        ThemedText(value: caption, sizePreset: .caption)
                            .foregroundColor(Color.init(hex: "868686"))
                    }
                    Spacer()
                    postShapeView
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
            }
            .background(
                RoundedRectangle(cornerRadius: 5)
                .fill(Color.init(hex: "ffffff"))
                .shadow(color: .init(hex: "11000000"), radius: 3, x: 4, y: 4)
                .frame(width: geo.size.width, alignment: .center)
            )
            .frame(width: geo.size.width, alignment: .center)
        }
        .frame(height: 60)
    }
}

struct SimpleCardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            SimpleCardView(
                title: "Hello World", caption: "Lorem ipsum"
            )
        }
    }
}
