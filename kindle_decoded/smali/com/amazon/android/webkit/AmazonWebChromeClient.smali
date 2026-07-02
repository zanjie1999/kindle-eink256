.class public Lcom/amazon/android/webkit/AmazonWebChromeClient;
.super Ljava/lang/Object;
.source "AmazonWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonWebChromeClient$OnCreateWindowCallback;,
        Lcom/amazon/android/webkit/AmazonWebChromeClient$CustomViewCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCloseWindow(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConsoleMessage(Lcom/amazon/android/webkit/AmazonConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onContentsReplaced(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onCreateWindow(Lcom/amazon/android/webkit/AmazonWebView;ZZLandroid/os/Bundle;Lcom/amazon/android/webkit/AmazonWebChromeClient$OnCreateWindowCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDocumentLoadTimes(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonDocumentLoadTimes;)V
    .locals 0

    return-void
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/amazon/android/webkit/AmazonWebStorage$QuotaUpdater;)V
    .locals 0

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonGeolocationPermissions$Callback;)V
    .locals 0

    return-void
.end method

.method public onHideAutofillPopup(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    return-void
.end method

.method public onInsecureContent(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onJsAlert(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onJsBeforeUnload(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onJsConfirm(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onJsPrompt(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonJsPromptResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onJsTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMediaDevicePermissionsShowPrompt(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonMediaDeviceSettings$Callback;)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Lcom/amazon/android/webkit/AmazonWebView;I)V
    .locals 0

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLcom/amazon/android/webkit/AmazonWebStorage$QuotaUpdater;)V
    .locals 0

    return-void
.end method

.method public onReceivedIcon(Lcom/amazon/android/webkit/AmazonWebView;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedTitle(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onRequestFocus(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onSavePassword(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonSavePasswordCallback;)V
    .locals 0

    .line 248
    invoke-interface {p2}, Lcom/amazon/android/webkit/AmazonSavePasswordCallback;->notNow()V

    return-void
.end method

.method public onSelectionDone(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onSelectionStart(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onShowAutofillPopup(Lcom/amazon/android/webkit/AmazonWebView;Landroid/graphics/Rect;[Lcom/amazon/android/webkit/AmazonAutofillSuggestion;)V
    .locals 0

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/amazon/android/webkit/AmazonWebChromeClient$CustomViewCallback;)V
    .locals 0

    return-void
.end method

.method public onWebTimings(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonWebTimings;)V
    .locals 0

    return-void
.end method

.method public onWebViewMetrics(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonWebViewMetrics;)V
    .locals 0

    return-void
.end method

.method public onWebViewResponsive(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public onWebViewTerminated(Lcom/amazon/android/webkit/AmazonWebView;I)V
    .locals 0

    return-void
.end method

.method public onWebViewUnresponsive(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 0

    return-void
.end method

.method public openFileChooser(Lcom/amazon/android/webkit/AmazonValueCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 167
    invoke-interface {p1, p2}, Lcom/amazon/android/webkit/AmazonValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 0

    return-void
.end method
