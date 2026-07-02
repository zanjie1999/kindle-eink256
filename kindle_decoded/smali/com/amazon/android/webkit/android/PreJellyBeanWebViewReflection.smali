.class public Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;
.super Lcom/amazon/android/webkit/android/AndroidWebViewReflection;
.source "PreJellyBeanWebViewReflection.java"


# static fields
.field private static final COMPUTE_VERTICAL_SCROLL_OFFSET:Ljava/lang/reflect/Method;

.field private static final DUMP_DISPLAY_TREE_METHOD:Ljava/lang/reflect/Method;

.field private static final DUMP_DOM_TREE_METHOD:Ljava/lang/reflect/Method;

.field private static final DUMP_RENDER_TREE_METHOD:Ljava/lang/reflect/Method;

.field private static final DUMP_V8_COUNTERS_METHOD:Ljava/lang/reflect/Method;

.field private static final GET_TOUCH_ICON_URL_METHOD:Ljava/lang/reflect/Method;

.field private static final LOAD_WEB_ARCHIVE_METHOD:Ljava/lang/reflect/Method;

.field private static final NOTIFY_FIND_DIALOG_DISMISSED_METHOD:Ljava/lang/reflect/Method;

.field private static final ON_PAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final ON_RESUME_METHOD:Ljava/lang/reflect/Method;

.field private static final SET_FIND_IS_UP_METHOD:Ljava/lang/reflect/Method;

.field private static final SET_NETWORK_TYPE_METHOD:Ljava/lang/reflect/Method;

.field private static final SET_WEB_BACK_FORWARD_LIST_CLIENT_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private amazonFindListener:Lcom/amazon/android/webkit/AmazonFindListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebBackForwardListClient;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "setWebBackForwardListClient"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->SET_WEB_BACK_FORWARD_LIST_CLIENT_METHOD:Ljava/lang/reflect/Method;

    .line 17
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string/jumbo v4, "onResume"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->ON_RESUME_METHOD:Ljava/lang/reflect/Method;

    .line 21
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string/jumbo v4, "onPause"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->ON_PAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 24
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "dumpV8Counters"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_V8_COUNTERS_METHOD:Ljava/lang/reflect/Method;

    .line 27
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "dumpRenderTree"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_RENDER_TREE_METHOD:Ljava/lang/reflect/Method;

    .line 30
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "dumpDomTree"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_DOM_TREE_METHOD:Ljava/lang/reflect/Method;

    .line 33
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "dumpDisplayTree"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_DISPLAY_TREE_METHOD:Ljava/lang/reflect/Method;

    .line 37
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string/jumbo v4, "notifyFindDialogDismissed"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->NOTIFY_FIND_DIALOG_DISMISSED_METHOD:Ljava/lang/reflect/Method;

    .line 41
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string/jumbo v4, "setFindIsUp"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->SET_FIND_IS_UP_METHOD:Ljava/lang/reflect/Method;

    .line 44
    const-class v1, Landroid/webkit/WebView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v2

    const-string/jumbo v4, "setNetworkType"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->SET_NETWORK_TYPE_METHOD:Ljava/lang/reflect/Method;

    .line 47
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "getTouchIconUrl"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->GET_TOUCH_ICON_URL_METHOD:Ljava/lang/reflect/Method;

    .line 50
    const-class v1, Landroid/webkit/WebView;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "computeVerticalScrollOffset"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->COMPUTE_VERTICAL_SCROLL_OFFSET:Ljava/lang/reflect/Method;

    .line 53
    const-class v1, Landroid/webkit/WebView;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const-string v0, "loadWebArchive"

    invoke-static {v1, v0, v2}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->LOAD_WEB_ARCHIVE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public dumpDisplayTree()V
    .locals 3

    .line 87
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_DISPLAY_TREE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4

    .line 92
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_DOM_TREE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

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

    .line 97
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_RENDER_TREE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

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
    .locals 3

    .line 82
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->DUMP_V8_COUNTERS_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->amazonFindListener:Lcom/amazon/android/webkit/AmazonFindListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 141
    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/android/webkit/AmazonFindListener;->onFindResultReceived(IIZ)V

    :cond_0
    return-void
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 3

    .line 62
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->GET_TOUCH_ICON_URL_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalScrollOffset()I
    .locals 3

    .line 112
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->COMPUTE_VERTICAL_SCROLL_OFFSET:Ljava/lang/reflect/Method;

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

    .line 122
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->LOAD_WEB_ARCHIVE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public notifyFindDialogDismissed()V
    .locals 3

    .line 77
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->NOTIFY_FIND_DIALOG_DISMISSED_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 102
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->ON_PAUSE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 107
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->ON_RESUME_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 4

    .line 72
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->SET_FIND_IS_UP_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

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
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->amazonFindListener:Lcom/amazon/android/webkit/AmazonFindListener;

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 67
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->SET_NETWORK_TYPE_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

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

    .line 117
    sget-object v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;->SET_WEB_BACK_FORWARD_LIST_CLIENT_METHOD:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
