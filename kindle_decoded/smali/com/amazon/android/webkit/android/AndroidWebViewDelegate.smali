.class public Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;
.super Lcom/amazon/android/webkit/AmazonWebViewDelegate;
.source "AndroidWebViewDelegate.java"


# static fields
.field private static final DEBUG_DUMP:Ljava/lang/reflect/Method;

.field private static final KITKAT_VERSION_NUMBER:I = 0x13

.field private static final WEB_HISTORY_ITEM_DATA_FIELD:Ljava/lang/reflect/Field;


# instance fields
.field private final solidColor:I

.field private final urlRequestHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/android/webkit/AmazonUrlRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final webSettings:Lcom/amazon/android/webkit/AmazonWebSettings;

.field private final webviewDelegate:Landroid/webkit/WebView;

.field private final webviewReflection:Lcom/amazon/android/webkit/android/AndroidWebViewReflection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const-class v0, Landroid/webkit/WebHistoryItem;

    .line 73
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    const-string v0, "android.webkit.WebHistoryItemClassic"

    .line 75
    invoke-static {v0}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "mFlattenedData"

    .line 77
    invoke-static {v0, v1}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    sput-object v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->WEB_HISTORY_ITEM_DATA_FIELD:Ljava/lang/reflect/Field;

    .line 85
    const-class v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "debugDump"

    invoke-static {v0, v2, v1}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->DEBUG_DUMP:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/webkit/AmazonWebView;ILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonWebView;",
            "I",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/android/webkit/AmazonUrlRequestHandler;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;-><init>(Lcom/amazon/android/webkit/AmazonWebView;)V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVerticalFadingEdgeEnabled(Z)V

    const/16 v0, 0xa

    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFadingEdgeLength(I)V

    .line 114
    iput p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->solidColor:I

    .line 116
    new-instance p2, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$1;-><init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    .line 142
    iput-object p3, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->urlRequestHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    new-instance p2, Lcom/amazon/android/webkit/android/AndroidWebSettings;

    iget-object p3, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazon/android/webkit/android/AndroidWebSettings;-><init>(Landroid/webkit/WebSettings;)V

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webSettings:Lcom/amazon/android/webkit/AmazonWebSettings;

    .line 144
    iget-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-static {p2}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->create(Landroid/webkit/WebView;)Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewReflection:Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    .line 145
    iget-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;IIIIIIIIZ)V
    .locals 0

    .line 63
    invoke-virtual/range {p0 .. p9}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onWebViewOverScrollBy(IIIIIIIIZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;IIII)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onWebViewScrolling(IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;II)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onWebViewScrollChanged(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onWebViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Landroid/webkit/WebHistoryItem;)[B
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebHistoryItemFlattenedData(Landroid/webkit/WebHistoryItem;)[B

    move-result-object p0

    return-object p0
.end method

.method private convertWebBackForwardList(Landroid/webkit/WebBackForwardList;)Lcom/amazon/android/webkit/AmazonWebBackForwardList;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 440
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 441
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 442
    invoke-virtual {p1, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 445
    new-instance v10, Lcom/amazon/android/webkit/AmazonWebHistoryItem;

    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebHistoryItemFlattenedData(Landroid/webkit/WebHistoryItem;)[B

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/amazon/android/webkit/AmazonWebHistoryItem;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_1
    new-instance v1, Lcom/amazon/android/webkit/AmazonWebBackForwardList;

    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/amazon/android/webkit/AmazonWebBackForwardList;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method private getWebHistoryItemFlattenedData(Landroid/webkit/WebHistoryItem;)[B
    .locals 2

    .line 421
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->WEB_HISTORY_ITEM_DATA_FIELD:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 422
    const-class p1, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const-string v1, "Method not supported in Android WebView"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1

    .line 427
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewReflection:Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    if-nez v0, :cond_0

    .line 895
    const-class v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const-string v2, "Method not supported in Android WebView"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewReflection:Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public canZoomIn()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public capturePicture(IIIIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V
    .locals 3

    if-lez p3, :cond_3

    if-lez p4, :cond_3

    if-lez p5, :cond_3

    if-eqz p6, :cond_2

    int-to-float v0, p4

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 789
    invoke-static {v0, p5}, Lcom/amazon/android/webkit/AmazonWebView;->scale(FI)I

    move-result v0

    .line 790
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 792
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int p1, p1

    int-to-float p1, p1

    neg-int p2, p2

    int-to-float p2, p2

    .line 793
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 794
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    if-ne p5, p3, :cond_0

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 797
    invoke-static {v1, p5, v0, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 798
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, p1

    .line 801
    :cond_1
    invoke-interface {p6, v1}, Lcom/amazon/android/webkit/AmazonPictureReadyListener;->onPictureReady(Landroid/graphics/Bitmap;)V

    return-void

    .line 786
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AmazonPictureReadyListener cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 782
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid width or height."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public capturePicture(IIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 807
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->capturePicture(IIIIILcom/amazon/android/webkit/AmazonPictureReadyListener;)V

    return-void
.end method

.method public clearCache(Z)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    return-void
.end method

.method public clearMatches()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    return-void
.end method

.method public clearView()V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->computeScroll()V

    return-void
.end method

.method public copyBackForwardList()Lcom/amazon/android/webkit/AmazonWebBackForwardList;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->convertWebBackForwardList(Landroid/webkit/WebBackForwardList;)Lcom/amazon/android/webkit/AmazonWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public debugDump()V
    .locals 3

    .line 213
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->DEBUG_DUMP:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->documentHasImages(Landroid/os/Message;)V

    return-void
.end method

.method public dumpDisplayTree()V
    .locals 1

    .line 350
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->dumpDisplayTree()V

    :cond_0
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->dumpDomTree(Z)V

    :cond_0
    return-void
.end method

.method public dumpRenderTree(Z)V
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->dumpRenderTree(Z)V

    :cond_0
    return-void
.end method

.method public dumpV8Counters()V
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->dumpV8Counters()V

    :cond_0
    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    .line 870
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->findAllAsync(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    return-void
.end method

.method public freeMemory()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method getDelegate()Landroid/webkit/WebView;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 498
    new-instance v1, Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/android/webkit/AmazonWebView$HitTestResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getScrollBarStyle()I
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/amazon/android/webkit/AmazonWebSettings;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webSettings:Lcom/amazon/android/webkit/AmazonWebSettings;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->solidColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .line 324
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalScrollOffset()I
    .locals 1

    .line 762
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->getVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    return-void
.end method

.method public goForward()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invokeZoomPicker()V

    return-void
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 549
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onUrlLoadRequested(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

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

    .line 156
    invoke-virtual {p0, p1}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onUrlLoadRequested(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadWebArchive(Ljava/lang/String;)V
    .locals 1

    .line 756
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->loadWebArchive(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyFindDialogDismissed()V
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->notifyFindDialogDismissed()V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 374
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->onPause()V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 382
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->onResume()V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result p1

    return p1
.end method

.method public pageUp(Z)Z
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result p1

    return p1
.end method

.method public pauseTimers()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performLongClick()Z
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->onUrlLoadRequested(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->requestImageRef(Landroid/os/Message;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebBackForwardList;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->convertWebBackForwardList(Landroid/webkit/WebBackForwardList;)Lcom/amazon/android/webkit/AmazonWebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public resumeTimers()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 2
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

    .line 559
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$4;

    invoke-direct {v1, p0, p3}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$4;-><init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->scrollBy(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDownloadDelegate(Lcom/amazon/android/webkit/AmazonDownloadDelegate;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 814
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$5;-><init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonDownloadDelegate;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 824
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public setDownloadListener(Lcom/amazon/android/webkit/AmazonDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 407
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$2;-><init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonDownloadListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 417
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->setFindIsUp(Z)V

    :cond_0
    return-void
.end method

.method public setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V

    :cond_0
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)Z
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    return-void
.end method

.method public setSelectPopupHandler(Lcom/amazon/android/webkit/AmazonSelectPopupHandler;)V
    .locals 0

    .line 839
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    return-void
.end method

.method public setWebBackForwardListClient(Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;)V
    .locals 1

    .line 466
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 471
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate$3;-><init>(Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;Lcom/amazon/android/webkit/AmazonWebBackForwardListClient;)V

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getWebViewReflection()Lcom/amazon/android/webkit/android/AndroidWebViewReflection;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    return-void
.end method

.method public setWebChromeClient(Lcom/amazon/android/webkit/AmazonWebChromeClient;)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getWebView()Lcom/amazon/android/webkit/AmazonWebView;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/webkit/android/AndroidWebChromeClient;-><init>(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Lcom/amazon/android/webkit/AmazonWebViewClient;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;

    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebViewDelegate;->getWebView()Lcom/amazon/android/webkit/AmazonWebView;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewClient;-><init>(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonWebViewClient;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public stopLoading()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->webviewDelegate:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    return v0
.end method
