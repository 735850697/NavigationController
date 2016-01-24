# DZXNavigationController
通过自定义UINavigationController和UIViewController实现一个更加灵活的导航栏。

##特性
* 全屏的转场动画
* 百分比驱动的交互转场
* 方便的导航栏背景透明方法
* 提供类似原生UINavigationController的属性
* 可选择的滑动返回手势方式（无滑动返回/边缘滑动返回/全屏滑动返回）

##支持的属性
|属性|Demo|
|---|---|
|navigationTitle（导航栏添加标题）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/navigationTitle.png)|
|navigationTitleView（导航栏添加自定义控件）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/navigationTitleView.png)|
|navigationLeftButton（导航栏添加左侧按钮）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/navigationLeftButton.png)|
|navigationLeftButtons（导航栏添加左侧按钮集合）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/navigationLeftButtons.png)|
|navigationRightButton（导航栏添加右侧按钮）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/navigationRightButton.png)|
|navigationRightButtons（导航栏添加右侧按钮集合）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/navigationRightButtons.png)|
|navigationAlpha（修改导航栏背景透明度）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/navigationAlpha.gif)|
|InteractivePopGestureRecognizerNone（无滑动返回手势）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/InteractivePopGestureRecognizerNone.gif)|
|InteractivePopGestureRecognizerEdge（百分比驱动的边缘滑动返回手势）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/InteractivePopGestureRecognizerEdge.gif)|
|InteractivePopGestureRecognizerFullScreen（百分比驱动的全屏返回手势）|![](https://github.com/KenwayGogo/DZXNavigationController/blob/master/screenshots/InteractivePopGestureRecognizerFullScreen.gif)|

##使用方法
下载项目后，将项目中Base和TransitionAnimation文件夹拖至你的项目下。然后在AppDelegate中导入DZXNavigationController类并初始化。`所有新建的ViewController都要继承DZXViewController`
<br>初始化代码：

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    DZXExampleListViewController *dzxExampleListViewController = [[DZXExampleListViewController alloc] initWithNibName:@"DZXExampleListViewController" bundle:nil];
    DZXNavigationController *dzxNavigationController = [[DZXNavigationController alloc] initWithRootViewController:dzxExampleListViewController];
    
    //设置手势
    dzxNavigationController.interactivePopGestureRecognizerType = InteractivePopGestureRecognizerFullScreen; //全屏手势
//    dzxNavigationController.interactivePopGestureRecognizerType = InteractivePopGestureRecognizerEdge; //边缘手势
//    dzxNavigationController.interactivePopGestureRecognizerType = InteractivePopGestureRecognizerNone; //无滑动返回手势
    
    self.window.rootViewController = dzxNavigationController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

```

##缺陷/需要注意的地方
* 由于自定义导航栏的本质是隐藏NavigationBar然后添加一个高度为64的UIView来模拟导航栏，所以创建界面的时候，如果你不希望界面有一部分被导航栏遮挡，则创建的控件需要往下移64。目前没有想到什么好的办法解决，后面慢慢填坑。
* 根据我自己做项目以及使用其他App时的经验，很少App会在导航栏左右两侧添加超过两个按钮的需求。所以导航栏添加按钮的方法我就写死了，左右两侧最多各可添加两个按钮。如果添加的是文字按钮，按钮的文本`最多只能为4个字，超出部分会截去`。如果添加的是图标按钮，需要提供两张图片，一张图片是图标未点击状态，一张是图标点击状态，`推荐图标分辨率为33，显示效果最佳`。
* 导航栏标题如果过长会`遮挡左右两侧按钮`，需要注意。

##最后
项目中有使用示例，大家可以快速的学习上手。本人还是小白，如有问题请提出，大家互相学习进步哈~
