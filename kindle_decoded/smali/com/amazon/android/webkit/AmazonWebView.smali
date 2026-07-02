.class public Lcom/amazon/android/webkit/AmazonWebView;
.super Landroid/widget/FrameLayout;
.source "AmazonWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;,
        Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;
    }
.end annotation


# static fields
.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"


# instance fields
.field private attachment:Ljava/lang/Object;

.field private pageLoadID:Ljava/lang/String;

.field private webViewDelegate:Lcom/amazon/android/webkit/AmazonWebViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->pageLoadID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->attachment:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->pageLoadID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->attachment:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->pageLoadID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->attachment:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 188
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->pageLoadID:Ljava/lang/String;

    .line 189
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/AmazonWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iput-object p2, p0, Lcom/amazon/android/webkit/AmazonWebView;->attachment:Ljava/lang/Object;

    return-void
.end method

.method private static checkThread()V
    .locals 3

    .line 1097
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1098
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "All WebView methods must be called on the UI thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static scale(FI)I
    .locals 0

    .line 1000
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-int p0, p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 581
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 582
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 467
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 468
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .line 293
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 294
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 473
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 474
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 1064
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1065
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 1070
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1071
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public canZoomIn()Z
    .locals 1

    .line 624
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 625
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .line 630
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 631
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 3

    .line 1008
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use capturePicture(int, int, int, int, int, AmazonPictureReadyListener) instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1011
    const-class v1, Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1012
    throw v0
.end method

.method public capturePicture(IIIIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V
    .locals 7

    .line 994
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 995
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->capturePicture(IIIIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V

    return-void
.end method

.method public capturePicture(IIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V
    .locals 1

    .line 950
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 951
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->capturePicture(IIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V

    return-void
.end method

.method public clearCache(Z)V
    .locals 1

    .line 491
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 492
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->clearCache(Z)V

    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 497
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 498
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->clearFormData()V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 403
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 404
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->clearHistory()V

    return-void
.end method

.method public clearMatches()V
    .locals 1

    .line 409
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 410
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->clearMatches()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 503
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 504
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->clearSslPreferences()V

    return-void
.end method

.method public clearView()V
    .locals 1

    .line 618
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 619
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->clearView()V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->computeScroll()V

    return-void
.end method

.method public copyBackForwardList()Lcom/amazon/android/webkit/AmazonWebBackForwardList;
    .locals 1

    .line 373
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 374
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->copyBackForwardList()Lcom/amazon/android/webkit/AmazonWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public debugDump()V
    .locals 1

    .line 342
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 343
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->debugDump()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 479
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 480
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->destroy()V

    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1

    .line 641
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 642
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->documentHasImages(Landroid/os/Message;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1088
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1089
    const-class p1, Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmazonWebView.draw() -- Unsupported method; Use capturePicture(int, int, int, int, int, AmazonPictureReadyListener) instead"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dumpDisplayTree()V
    .locals 1

    .line 532
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 533
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->dumpDisplayTree()V

    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 1

    .line 538
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 539
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->dumpDomTree(Z)V

    return-void
.end method

.method public dumpRenderTree(Z)V
    .locals 1

    .line 544
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 545
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->dumpRenderTree(Z)V

    return-void
.end method

.method public dumpV8Counters()V
    .locals 1

    .line 550
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 551
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->dumpV8Counters()V

    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    .line 1058
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1059
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->exitFullscreen()V

    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 417
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->findAll(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    .line 422
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 423
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .line 428
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 429
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->findNext(Z)V

    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .line 647
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 648
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->flingScroll(II)V

    return-void
.end method

.method public freeMemory()V
    .locals 1

    .line 485
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 486
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->freeMemory()V

    return-void
.end method

.method public generateNewPageLoadID()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 225
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView;->pageLoadID:Ljava/lang/String;

    return-void
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1

    .line 927
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 928
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 336
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 337
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 1076
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1077
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 299
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 300
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;
    .locals 1

    .line 348
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 349
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getHitTestResult()Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 436
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoadingUrl()Ljava/lang/String;
    .locals 1

    .line 909
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 910
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getLoadingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1050
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1051
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 316
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 317
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageLoadID()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 235
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView;->pageLoadID:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 322
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 323
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 653
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 654
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getScale()F

    move-result v0

    return v0
.end method

.method public getScrollBarStyle(I)I
    .locals 0

    .line 789
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getScrollBarStyle()I

    move-result p1

    return p1
.end method

.method public getSettings()Lcom/amazon/android/webkit/AmazonWebSettings;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getSettings()Lcom/amazon/android/webkit/AmazonWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 593
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 594
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getSolidColor()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 328
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 329
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 310
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 311
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalScrollOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 860
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView;->webViewDelegate:Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    if-eqz v0, :cond_0

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "webview delegate not set because user did not call AmazonWebKitFactory.initializeWebView() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public goBack()V
    .locals 1

    .line 275
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 276
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 287
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 288
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->goBackOrForward(I)V

    return-void
.end method

.method public goForward()V
    .locals 1

    .line 281
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 282
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->goForward()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 659
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 660
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->invokeZoomPicker()V

    return-void
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .line 815
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 816
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .line 1016
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1017
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .line 822
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 823
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 599
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 600
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 605
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 606
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 245
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 246
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 251
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 252
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadWebArchive(Ljava/lang/String;)V
    .locals 1

    .line 847
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 848
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->loadWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public notifyFindDialogDismissed()V
    .locals 1

    .line 526
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 527
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->notifyFindDialogDismissed()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 670
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 671
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 676
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 677
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 563
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 564
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 569
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 570
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1036
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 687
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 688
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 693
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 694
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .line 699
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 700
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->pageDown(Z)Z

    move-result p1

    return p1
.end method

.method public pageUp(Z)Z
    .locals 1

    .line 705
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 706
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->pageUp(Z)Z

    move-result p1

    return p1
.end method

.method public pauseTimers()V
    .locals 1

    .line 391
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 392
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->pauseTimers()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .line 720
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .line 257
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 258
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 263
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 264
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->reload()V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .line 587
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 588
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .line 379
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 380
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .line 730
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 731
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->requestImageRef(Landroid/os/Message;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebBackForwardList;
    .locals 1

    .line 461
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 462
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->restoreState(Landroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public resumeTimers()V
    .locals 1

    .line 397
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 398
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->resumeTimers()V

    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 736
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 737
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 455
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 456
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    .line 742
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 743
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->saveWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 1
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

    .line 611
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 612
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->saveWebArchive(Ljava/lang/String;ZLcom/amazon/android/webkit/AmazonValueCallback;)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 1082
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1083
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->scrollBy(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setBackgroundColor(I)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1

    .line 753
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 754
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setCertificate(Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1117
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDownloadDelegate(Lcom/amazon/android/webkit/AmazonDownloadDelegate;)V
    .locals 1

    .line 367
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 368
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setDownloadDelegate(Lcom/amazon/android/webkit/AmazonDownloadDelegate;)V

    return-void
.end method

.method public setDownloadListener(Lcom/amazon/android/webkit/AmazonDownloadListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 362
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setDownloadListener(Lcom/amazon/android/webkit/AmazonDownloadListener;)V

    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 1

    .line 520
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 521
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setFindIsUp(Z)V

    return-void
.end method

.method public setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V
    .locals 1

    .line 239
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 240
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V

    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .line 801
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 802
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    .line 759
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 760
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setHorizontalScrollbarOverlay(Z)V

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 444
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .line 765
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 766
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setInitialScale(I)V

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setLayerType(ILandroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView;->webViewDelegate:Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setLoadingUrl(Ljava/lang/String;)V
    .locals 1

    .line 918
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 919
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setLoadingUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1

    .line 778
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 779
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setMapTrackballToArrowKeys(Z)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .line 354
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 355
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setNetworkAvailable(Z)V

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 514
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 515
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 1041
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1042
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOnOverscrollByListener(Lcom/amazon/android/webkit/AmazonOverScrollByListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 883
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setOnOverscrollByListener(Lcom/amazon/android/webkit/AmazonOverScrollByListener;)V

    return-void
.end method

.method public setOnScrollChangedListener(Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;)V
    .locals 1

    .line 891
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 892
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setOnScrollChangedListener(Lcom/amazon/android/webkit/AmazonOnScrollChangedListener;)V

    return-void
.end method

.method public setOnScrollingListener(Lcom/amazon/android/webkit/AmazonOnScrollingListener;)V
    .locals 1

    .line 900
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 901
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setOnScrollingListener(Lcom/amazon/android/webkit/AmazonOnScrollingListener;)V

    return-void
.end method

.method public setOnTouchOverride(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 873
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setOnTouchOverride(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOnUrlLoadRequested(Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;)V
    .locals 1

    .line 938
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 939
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setOnUrlLoadRequested(Lcom/amazon/android/webkit/AmazonWebView$OnUrlLoadRequestedListener;)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView;->webViewDelegate:Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setScrollBarStyle(I)V

    return-void
.end method

.method public setSelectPopupHandler(Lcom/amazon/android/webkit/AmazonSelectPopupHandler;)V
    .locals 1

    .line 1022
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 1023
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setSelectPopupHandler(Lcom/amazon/android/webkit/AmazonSelectPopupHandler;)V

    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .line 808
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 809
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .line 794
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 795
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setVerticalScrollbarOverlay(Z)V

    return-void
.end method

.method public setWebBackForwardListClient(Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;)V
    .locals 1

    .line 557
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 558
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setWebBackForwardListClient(Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;)V

    return-void
.end method

.method public setWebChromeClient(Lcom/amazon/android/webkit/AmazonWebChromeClient;)V
    .locals 1

    .line 385
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 386
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setWebChromeClient(Lcom/amazon/android/webkit/AmazonWebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Lcom/amazon/android/webkit/AmazonWebViewClient;)V
    .locals 1

    .line 269
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 270
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->setWebViewClient(Lcom/amazon/android/webkit/AmazonWebViewClient;)V

    return-void
.end method

.method public setWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebViewDelegate;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebView;->webViewDelegate:Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    if-nez v0, :cond_0

    .line 212
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebView;->webViewDelegate:Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    return-void

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WebViewDelegate is already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1

    .line 833
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 834
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->showFindDialog(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public stopLoading()V
    .locals 1

    .line 449
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 450
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->stopLoading()V

    return-void
.end method

.method public super_requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public zoomIn()Z
    .locals 1

    .line 575
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 576
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 839
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebView;->checkThread()V

    .line 840
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->zoomOut()Z

    move-result v0

    return v0
.end method
