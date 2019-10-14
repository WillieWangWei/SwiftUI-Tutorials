![](https://repository-images.githubusercontent.com/190505979/0618a700-889e-11e9-9543-7cf88db49659)

<p align="center">
  <a href="https://github.com/WillieWangWei"><img src="https://img.shields.io/badge/language-swift-orange.svg"></a>
  <a href="https://github.com/WillieWangWei"><img src="https://img.shields.io/github/repo-size/WillieWangWei/SwiftUI-Tutorials.svg"></a>
  <a href="https://github.com/WillieWangWei/SwiftUI-Tutorials/blob/master/LICENSE"><img src="https://img.shields.io/github/license/WillieWangWei/SwiftUI-Tutorials.svg"></a>
</p>

> **构建示例项目需要以下环境：**
> 
> * macOS 10.15 Catalina 或更高
> * Xcode 11.1 或更高

# 概述 

对于初步学习和使用 `SwiftUI` 的开发者来说，官方教程无疑是最好的范例。它以构建一个 App 为脉络，串联出了 `SwiftUI` 重要的知识点，并主动抛出开发中一些常见的问题，然后用 `SwiftUI` 给出了解决方案。通过阅读此教程，你将逐步获得使用 `SwiftUI` 开发 App 的技能和思想。

此项目为 [SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui) 的翻译及代码示例，具体内容请翻阅：

**🎉 [SwiftUI 教程（中文）](https://github.com/WillieWangWei/SwiftUI-Tutorials/wiki)**

项目中的代码为完成所有教程后的最终成品，你可以直接体验多种 `SwiftUI` 特性。另外，你也可以在每个教程章节中下载对应的起始和完成代码。

完成本教程，你将获得一个这样的 App 以及一套精彩的 `SwiftUI` 代码：

![](https://github.com/WillieWangWei/SwiftUI-Tutorials/blob/master/preview.gif)

> **觉得不错？给个 Star 或 Follow 👌**

## 更新日志

| 版本 | 内容 |
| - | - |
| v1.0.0 | 完成初版 |
| v1.0.1 | 同步官方文档<br>增加成品预览 |
| v1.0.2 | 同步官方文档<br>优化翻译，修复翻译错误，让阅读更流畅<br>增加了代码高亮<br>标记出了代码修改范围，便于上下文对比 |

## 调整

### 图片

为了优化阅读体验，部分图片加上了 `#000000`  `50%`  `10 Blur` 的阴影。

### 视频

由于 `GitHub Wiki` 的限制，所有视频已转码成 `GIF` 。

### 代码

在实际编码中，由于本地环境和官方教程不一致，导致部分方法的声明和调用方式、代码风格等与官方教程有细微出入，例如：

官方教程：

```Swift
.
.
.
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}
.
.
.
```

这里的 `UIViewRepresentable` 是一个协议，它的声明中包含一个 `associatedtype` :

```Swift
/// The type of `UIView` to be presented.
associatedtype UIViewType : UIView
```

在开发中，给此 `associatedtype` 赋值后 Xcode 对方法的签名补全会有变化，最终写作：

```Swift
.
.
.
struct MapView : UIViewRepresentable {
    
    typealias UIViewType = MKMapView
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView(frame: .zero)
    }
}
.
.
.
```

如此修改不再一一列举，只需记得**此类修改不会改变原教程的构建结果**即可，不必过于纠结。

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/WillieWangWei/SwiftUI-Tutorials/blob/master/LICENSE) file for details.
