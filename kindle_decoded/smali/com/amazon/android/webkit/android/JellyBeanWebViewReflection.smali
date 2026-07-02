.class Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;
.super Lcom/amazon/android/webkit/android/AndroidWebViewReflection;
.source "JellyBeanWebViewReflection.java"


# static fields
.field private static final COMPUTE_VERTICAL_SCROLL_OFFSET:Ljava/lang/reflect/Method;

.field private static final DUMP_DISPLAY_TREE_METHOD:Ljava/lang/reflect/Method;

.field private static final DUMP_DOM_TREE_METHOD:Ljava/lang/reflect/Method;

.field private static final DUMP_RENDER_TREE_METHOD:Ljava/lang/reflect/Method;

.field private static final FROM_WEB_VIEW_METHOD:Ljava/lang/reflect/Method;

.field private static final GET_TOUCH_ICON_URL_METHOD:Ljava/lang/reflect/Method;

.field private static final LOAD_WEB_ARCHIVE_METHOD:Ljava/lang/reflect/Method;

.field private static final NOTIFY_FIND_DIALOG_DISMISSED_METHOD:Ljava/lang/reflect/Method;

.field private static final ON_PAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final ON_RESUME_METHOD:Ljava/lang/reflect/Method;

.field private static final SET_FIND_IS_UP_METHOD:Ljava/lang/reflect/Method;

.field private static final SET_NETWORK_TYPE_METHOD:Ljava/lang/reflect/Method;

.field private static final SET_WEB_BACK_FORWARD_LIST_CLIENT_METHOD:Ljava/lang/reflect/Method;

.field private static final WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final webviewClassicDelegate:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    const-class v0, Ljava/lang/String;

    const-string v1, "android.webkit.WebViewClassic"

    invoke-static {v1}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    const-class v4, Landroid/webkit/WebBackForwardListClient;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "setWebBackForwardListClient"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->SET_WEB_BACK_FORWARD_LIST_CLIENT_METHOD:Ljava/lang/reflect/Method;

    .line 18
    sget-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    aput-object v4, v3, v5

    const-string v4, "fromWebView"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->FROM_WEB_VIEW_METHOD:Ljava/lang/reflect/Method;

    .line 22
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string/jumbo v4, "onResume"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->ON_RESUME_METHOD:Ljava/lang/reflect/Method;

    .line 26
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string/jumbo v4, "onPause"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->ON_PAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 29
    sget-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "dumpRenderTree"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->DUMP_RENDER_TREE_METHOD:Ljava/lang/reflect/Method;

    .line 32
    sget-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "dumpDomTree"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->DUMP_DOM_TREE_METHOD:Ljava/lang/reflect/Method;

    .line 36
    sget-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "dumpDisplayTree"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->DUMP_DISPLAY_TREE_METHOD:Ljava/lang/reflect/Method;

    .line 40
    sget-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    new-array v3, v5, [Ljava/lang/Class;

    const-string/jumbo v4, "notifyFindDialogDismissed"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->NOTIFY_FIND_DIALOG_DISMISSED_METHOD:Ljava/lang/reflect/Method;

    .line 44
    sget-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string/jumbo v4, "setFindIsUp"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->SET_FIND_IS_UP_METHOD:Ljava/lang/reflect/Method;

    .line 47
    sget-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->WEB_VIEW_CLASSIC_CLASS:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v2

    const-string/jumbo v4, "setNetworkType"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->SET_NETWORK_TYPE_METHOD:Ljava/lang/reflect/Method;

    .line 50
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "getTouchIconUrl"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->GET_TOUCH_ICON_URL_METHOD:Ljava/lang/reflect/Method;

    .line 53
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "computeVerticalScrollOffset"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->COMPUTE_VERTICAL_SCROLL_OFFSET:Ljava/lang/reflect/Method;

    .line 56
    const-class v1, Landroid/webkit/WebView;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const-string v0, "loadWebArchive"

    invoke-static {v1, v0, v2}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->LOAD_WEB_ARCHIVE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 3

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;-><init>(Landroid/webkit/WebView;)V

    .line 63
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->FROM_WEB_VIEW_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dumpDisplayTree()V
    .locals 3

    .line 88
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->DUMP_DISPLAY_TREE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4

    .line 93
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->DUMP_DOM_TREE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dumpRenderTree(Z)V
    .locals 4

    .line 98
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->DUMP_RENDER_TREE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dumpV8Counters()V
    .locals 1

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 3

    .line 68
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->GET_TOUCH_ICON_URL_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalScrollOffset()I
    .locals 3

    .line 118
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->COMPUTE_VERTICAL_SCROLL_OFFSET:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public loadWebArchive(Ljava/lang/String;)V
    .locals 4

    .line 128
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->LOAD_WEB_ARCHIVE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public notifyFindDialogDismissed()V
    .locals 3

    .line 83
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->NOTIFY_FIND_DIALOG_DISMISSED_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 108
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->ON_PAUSE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 113
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->ON_RESUME_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 4

    .line 78
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->SET_FIND_IS_UP_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection$1;-><init>(Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;Lcom/amazon/android/webkit/AmazonFindListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 73
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->SET_NETWORK_TYPE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 4

    .line 123
    sget-object v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->SET_WEB_BACK_FORWARD_LIST_CLIENT_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;->webviewClassicDelegate:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
