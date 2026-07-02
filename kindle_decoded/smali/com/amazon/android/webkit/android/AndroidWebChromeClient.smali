.class public Lcom/amazon/android/webkit/android/AndroidWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AndroidWebChromeClient.java"


# instance fields
.field private final client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

.field private final webview:Lcom/amazon/android/webkit/AmazonWebView;


# direct methods
.method public constructor <init>(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonWebChromeClient;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    .line 39
    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    return-void
.end method

.method private convertConsoleMessage(Landroid/webkit/ConsoleMessage;)Lcom/amazon/android/webkit/AmazonConsoleMessage;
    .locals 4

    .line 169
    new-instance v0, Lcom/amazon/android/webkit/AmazonConsoleMessage;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->convertMessageLevel(Landroid/webkit/ConsoleMessage$MessageLevel;)Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/android/webkit/AmazonConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;)V

    return-object v0
.end method

.method private convertJsPromptResult(Landroid/webkit/JsPromptResult;)Lcom/amazon/android/webkit/AmazonJsPromptResult;
    .locals 1

    .line 213
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$7;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$7;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/JsPromptResult;)V

    return-object v0
.end method

.method private convertJsResult(Landroid/webkit/JsResult;)Lcom/amazon/android/webkit/AmazonJsResult;
    .locals 1

    .line 199
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$6;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/JsResult;)V

    return-object v0
.end method

.method private convertMessageLevel(Landroid/webkit/ConsoleMessage$MessageLevel;)Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;
    .locals 3

    .line 151
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$10;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 161
    sget-object p1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->WARNING:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object p1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    sget-object p1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->TIP:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object p1

    .line 157
    :cond_2
    sget-object p1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->LOG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object p1

    .line 155
    :cond_3
    sget-object p1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->DEBUG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object p1

    .line 153
    :cond_4
    sget-object p1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->ERROR:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object p1
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$8;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$8;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/ValueCallback;)V

    .line 271
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {p1, v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->getVisitedHistory(Lcom/amazon/android/webkit/AmazonValueCallback;)V

    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onCloseWindow(Lcom/amazon/android/webkit/AmazonWebView;)V

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-direct {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->convertConsoleMessage(Landroid/webkit/ConsoleMessage;)Lcom/amazon/android/webkit/AmazonConsoleMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onConsoleMessage(Lcom/amazon/android/webkit/AmazonConsoleMessage;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 6

    .line 60
    new-instance v5, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;

    invoke-direct {v5, p0, p4}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/os/Message;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onCreateWindow(Lcom/amazon/android/webkit/AmazonWebView;ZZLandroid/os/Bundle;Lcom/amazon/android/webkit/AmazonWebChromeClient$OnCreateWindowCallback;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11

    move-object v0, p0

    .line 99
    new-instance v10, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$2;

    move-object/from16 v1, p9

    invoke-direct {v10, p0, v1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$2;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/WebStorage$QuotaUpdater;)V

    .line 105
    iget-object v1, v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/amazon/android/webkit/AmazonWebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    .line 189
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$5;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$5;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 195
    iget-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonGeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-direct {p0, p4}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->convertJsResult(Landroid/webkit/JsResult;)Lcom/amazon/android/webkit/AmazonJsResult;

    move-result-object p4

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onJsAlert(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-direct {p0, p4}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->convertJsResult(Landroid/webkit/JsResult;)Lcom/amazon/android/webkit/AmazonJsResult;

    move-result-object p4

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onJsBeforeUnload(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-direct {p0, p4}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->convertJsResult(Landroid/webkit/JsResult;)Lcom/amazon/android/webkit/AmazonJsResult;

    move-result-object p4

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onJsConfirm(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-direct {p0, p5}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->convertJsPromptResult(Landroid/webkit/JsPromptResult;)Lcom/amazon/android/webkit/AmazonJsPromptResult;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onJsPrompt(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onJsTimeout()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onProgressChanged(Lcom/amazon/android/webkit/AmazonWebView;I)V

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    .line 117
    new-instance v5, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$3;

    invoke-direct {v5, p0, p5}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$3;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/WebStorage$QuotaUpdater;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onReachedMaxAppCacheSize(JJLcom/amazon/android/webkit/AmazonWebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onReceivedIcon(Lcom/amazon/android/webkit/AmazonWebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onReceivedTitle(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onReceivedTouchIconUrl(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onRequestFocus(Lcom/amazon/android/webkit/AmazonWebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 135
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$4;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$4;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 141
    iget-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/amazon/android/webkit/AmazonWebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$9;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$9;-><init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/webkit/ValueCallback;)V

    .line 281
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->client:Lcom/amazon/android/webkit/AmazonWebChromeClient;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebChromeClient;->openFileChooser(Lcom/amazon/android/webkit/AmazonValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
