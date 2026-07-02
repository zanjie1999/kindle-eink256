.class public abstract Lcom/amazon/android/webkit/AmazonWebViewDelegate;
.super Ljava/lang/Object;
.source "AmazonWebViewDelegate.java"


# instance fields
.field private loadingUrl:Ljava/lang/String;

.field private onScrollChangedListener:Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;

.field private onScrollingListener:Lcom/amazon/android/webkit/AmazonOnScrollingListener;

.field private onTouchListenerOverride:Landroid/view/View$OnTouchListener;

.field private onUrlLoadRequestedListener:Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;

.field private overScrollByListener:Lcom/amazon/android/webkit/AmazonOverScrollByListener;

.field private final view:Lcom/amazon/android/webkit/AmazonWebView;


# direct methods
.method protected constructor <init>(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onTouchListenerOverride:Landroid/view/View$OnTouchListener;

    .line 34
    iput-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->overScrollByListener:Lcom/amazon/android/webkit/AmazonOverScrollByListener;

    .line 37
    iput-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onScrollChangedListener:Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;

    .line 40
    iput-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onUrlLoadRequestedListener:Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;

    .line 46
    iput-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadingUrl:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->view:Lcom/amazon/android/webkit/AmazonWebView;

    return-void
.end method


# virtual methods
.method protected abstract addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method protected abstract canGoBack()Z
.end method

.method protected abstract canGoBackOrForward(I)Z
.end method

.method protected abstract canGoForward()Z
.end method

.method protected abstract canScrollHorizontally(I)Z
.end method

.method protected abstract canScrollVertically(I)Z
.end method

.method protected abstract canZoomIn()Z
.end method

.method protected abstract canZoomOut()Z
.end method

.method protected abstract capturePicture()Landroid/graphics/Picture;
.end method

.method public abstract capturePicture(IIIIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V
.end method

.method protected abstract capturePicture(IIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V
.end method

.method protected abstract clearCache(Z)V
.end method

.method protected abstract clearFormData()V
.end method

.method protected abstract clearHistory()V
.end method

.method protected abstract clearMatches()V
.end method

.method protected abstract clearSslPreferences()V
.end method

.method protected abstract clearView()V
.end method

.method protected abstract computeScroll()V
.end method

.method protected abstract copyBackForwardList()Lcom/amazon/android/webkit/AmazonWebBackForwardList;
.end method

.method protected abstract debugDump()V
.end method

.method protected abstract destroy()V
.end method

.method protected abstract documentHasImages(Landroid/os/Message;)V
.end method

.method protected abstract dumpDisplayTree()V
.end method

.method protected abstract dumpDomTree(Z)V
.end method

.method protected abstract dumpRenderTree(Z)V
.end method

.method protected abstract dumpV8Counters()V
.end method

.method protected abstract exitFullscreen()V
.end method

.method protected abstract findAll(Ljava/lang/String;)I
.end method

.method protected abstract findAllAsync(Ljava/lang/String;)V
.end method

.method protected abstract findNext(Z)V
.end method

.method protected abstract flingScroll(II)V
.end method

.method protected abstract freeMemory()V
.end method

.method protected abstract getCertificate()Landroid/net/http/SslCertificate;
.end method

.method protected abstract getContentHeight()I
.end method

.method protected abstract getFavicon()Landroid/graphics/Bitmap;
.end method

.method protected abstract getHitTestResult()Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;
.end method

.method protected abstract getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected getLoadingUrl()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadingUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method protected abstract getOriginalUrl()Ljava/lang/String;
.end method

.method protected abstract getProgress()I
.end method

.method protected abstract getScale()F
.end method

.method protected abstract getScrollBarStyle()I
.end method

.method protected abstract getSettings()Lcom/amazon/android/webkit/AmazonWebSettings;
.end method

.method protected abstract getSolidColor()I
.end method

.method protected abstract getTitle()Ljava/lang/String;
.end method

.method protected abstract getTouchIconUrl()Ljava/lang/String;
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method protected abstract getVerticalScrollOffset()I
.end method

.method protected getWebView()Lcom/amazon/android/webkit/AmazonWebView;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->view:Lcom/amazon/android/webkit/AmazonWebView;

    return-object v0
.end method

.method protected abstract goBack()V
.end method

.method protected abstract goBackOrForward(I)V
.end method

.method protected abstract goForward()V
.end method

.method protected abstract invokeZoomPicker()V
.end method

.method protected abstract isHorizontalScrollBarEnabled()Z
.end method

.method protected abstract isPrivateBrowsingEnabled()Z
.end method

.method protected abstract isVerticalScrollBarEnabled()Z
.end method

.method protected abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract loadUrl(Ljava/lang/String;)V
.end method

.method protected abstract loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract loadWebArchive(Ljava/lang/String;)V
.end method

.method protected abstract notifyFindDialogDismissed()V
.end method

.method protected abstract onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end method

.method protected abstract onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected abstract onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onResume()V
.end method

.method protected abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method protected onUrlLoadRequested(Ljava/lang/String;)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onUrlLoadRequestedListener:Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->view:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-interface {v0, v1, p1}, Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;->urlLoadRequested(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onWebViewOverScrollBy(IIIIIIIIZ)V
    .locals 11

    move-object v0, p0

    .line 458
    iget-object v1, v0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->overScrollByListener:Lcom/amazon/android/webkit/AmazonOverScrollByListener;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 459
    invoke-interface/range {v1 .. v10}, Lcom/amazon/android/webkit/AmazonOverScrollByListener;->onOverScrollBy(IIIIIIIIZ)V

    :cond_0
    return-void
.end method

.method protected onWebViewScrollChanged(II)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onScrollChangedListener:Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;->onScrollChanged(II)V

    :cond_0
    return-void
.end method

.method protected onWebViewScrolling(IIII)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onScrollingListener:Lcom/amazon/android/webkit/AmazonOnScrollingListener;

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonOnScrollingListener;->onScrolling(IIII)V

    :cond_0
    return-void
.end method

.method protected onWebViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onTouchListenerOverride:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->view:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract onWindowFocusChanged(Z)V
.end method

.method protected abstract overlayHorizontalScrollbar()Z
.end method

.method protected abstract overlayVerticalScrollbar()Z
.end method

.method protected abstract pageDown(Z)Z
.end method

.method protected abstract pageUp(Z)Z
.end method

.method protected abstract pauseTimers()V
.end method

.method protected abstract performAccessibilityAction(ILandroid/os/Bundle;)Z
.end method

.method protected abstract performLongClick()Z
.end method

.method protected abstract postUrl(Ljava/lang/String;[B)V
.end method

.method protected abstract reload()V
.end method

.method protected abstract removeJavascriptInterface(Ljava/lang/String;)V
.end method

.method protected abstract requestFocus(ILandroid/graphics/Rect;)Z
.end method

.method protected abstract requestFocusNodeHref(Landroid/os/Message;)V
.end method

.method protected abstract requestImageRef(Landroid/os/Message;)V
.end method

.method protected abstract restoreState(Landroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebBackForwardList;
.end method

.method protected abstract resumeTimers()V
.end method

.method protected abstract savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract saveState(Landroid/os/Bundle;)V
.end method

.method protected abstract saveWebArchive(Ljava/lang/String;)V
.end method

.method protected abstract saveWebArchive(Ljava/lang/String;ZLcom/amazon/android/webkit/AmazonValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected scrollBy(II)V
    .locals 0

    .line 506
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected abstract setBackgroundColor(I)V
.end method

.method protected abstract setCertificate(Landroid/net/http/SslCertificate;)V
.end method

.method protected abstract setContentDescription(Ljava/lang/CharSequence;)V
.end method

.method protected abstract setDownloadDelegate(Lcom/amazon/android/webkit/AmazonDownloadDelegate;)V
.end method

.method protected abstract setDownloadListener(Lcom/amazon/android/webkit/AmazonDownloadListener;)V
.end method

.method protected abstract setFindIsUp(Z)V
.end method

.method protected abstract setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V
.end method

.method protected abstract setHorizontalScrollBarEnabled(Z)V
.end method

.method protected abstract setHorizontalScrollbarOverlay(Z)V
.end method

.method protected abstract setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract setInitialScale(I)V
.end method

.method protected abstract setLayerType(ILandroid/graphics/Paint;)Z
.end method

.method protected setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method

.method protected setLoadingUrl(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadingUrl:Ljava/lang/String;

    return-void
.end method

.method protected abstract setMapTrackballToArrowKeys(Z)V
.end method

.method protected abstract setNetworkAvailable(Z)V
.end method

.method protected abstract setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method protected setOnOverscrollByListener(Lcom/amazon/android/webkit/AmazonOverScrollByListener;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->overScrollByListener:Lcom/amazon/android/webkit/AmazonOverScrollByListener;

    return-void
.end method

.method protected setOnScrollChangedListener(Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onScrollChangedListener:Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;

    return-void
.end method

.method protected setOnScrollingListener(Lcom/amazon/android/webkit/AmazonOnScrollingListener;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onScrollingListener:Lcom/amazon/android/webkit/AmazonOnScrollingListener;

    return-void
.end method

.method protected setOnTouchOverride(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onTouchListenerOverride:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected setOnUrlLoadRequested(Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onUrlLoadRequestedListener:Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;

    return-void
.end method

.method protected abstract setOverScrollMode(I)V
.end method

.method protected abstract setScrollBarStyle(I)V
.end method

.method protected abstract setSelectPopupHandler(Lcom/amazon/android/webkit/AmazonSelectPopupHandler;)V
.end method

.method protected abstract setVerticalScrollBarEnabled(Z)V
.end method

.method protected abstract setVerticalScrollbarOverlay(Z)V
.end method

.method protected abstract setWebBackForwardListClient(Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;)V
.end method

.method protected abstract setWebChromeClient(Lcom/amazon/android/webkit/AmazonWebChromeClient;)V
.end method

.method protected abstract setWebViewClient(Lcom/amazon/android/webkit/AmazonWebViewClient;)V
.end method

.method protected abstract shouldDelayChildPressedState()Z
.end method

.method protected abstract showFindDialog(Ljava/lang/String;Z)Z
.end method

.method protected abstract stopLoading()V
.end method

.method protected abstract zoomIn()Z
.end method

.method public abstract zoomOut()Z
.end method
