.class public final Lcom/amazon/falkor/webview/FalkorWebViewUtils;
.super Ljava/lang/Object;
.source "FalkorWebViewUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorWebViewUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorWebViewUtils.kt\ncom/amazon/falkor/webview/FalkorWebViewUtils\n*L\n1#1,60:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/webview/FalkorWebViewUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/falkor/webview/FalkorWebViewUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/webview/FalkorWebViewUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->INSTANCE:Lcom/amazon/falkor/webview/FalkorWebViewUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic createAndSetupRoundedWebView$default(Lcom/amazon/falkor/webview/FalkorWebViewUtils;Landroid/content/Context;Landroid/webkit/WebViewClient;Ljava/lang/String;Lcom/amazon/falkor/FalkorJSInterface;ZZZZILjava/lang/Object;)Lcom/amazon/falkor/webview/RoundedWebview;
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    move/from16 v10, p8

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 27
    invoke-virtual/range {v2 .. v10}, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->createAndSetupRoundedWebView(Landroid/content/Context;Landroid/webkit/WebViewClient;Ljava/lang/String;Lcom/amazon/falkor/FalkorJSInterface;ZZZZ)Lcom/amazon/falkor/webview/RoundedWebview;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cleanUpWebView(Landroid/webkit/WebView;)V
    .locals 2

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    :cond_1
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 55
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string/jumbo v1, "webView.settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "about:blank"

    .line 56
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 58
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public final createAndSetupRoundedWebView(Landroid/content/Context;Landroid/webkit/WebViewClient;Ljava/lang/String;Lcom/amazon/falkor/FalkorJSInterface;ZZZZ)Lcom/amazon/falkor/webview/RoundedWebview;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/amazon/falkor/webview/RoundedWebview;

    invoke-direct {v0, p1}, Lcom/amazon/falkor/webview/RoundedWebview;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo v1, "settings"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 31
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 32
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    invoke-virtual {v0, p8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    const-string p1, "WebViewWidget"

    .line 37
    invoke-virtual {v0, p4, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method
