.class public Lcom/amazon/krf/platform/WebviewPlugin;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/WebviewPlugin$ParserFields;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebviewPlugin"


# instance fields
.field private mAutomaticPlayDelay:D

.field private mAutomaticPlayEnabled:Z

.field private mBackgroundTransparent:Z

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mIsVisible:Z

.field private final mLoadWebViewRunnable:Ljava/lang/Runnable;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParent:Lcom/amazon/krf/platform/KRFView;

.field private mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

.field private mResourceProvider:Lcom/amazon/krf/platform/KRFResourceProvider;

.field private mScaleContentToFit:Z

.field private mScaleFactor:D

.field private mUri:Ljava/lang/String;

.field private mUserInteractionEnabled:Z

.field private mWebview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mIsVisible:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 101
    iput-wide v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleFactor:D

    .line 106
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/WebviewPlugin$1;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$2;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/WebviewPlugin$2;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mLoadWebViewRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/krf/platform/WebviewPlugin;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mLoadWebViewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/webkit/WebView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/krf/platform/WebviewPlugin;D)D
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleFactor:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/amazon/krf/platform/WebviewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/krf/platform/WebviewPlugin;)Lcom/amazon/krf/platform/KRFView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFView;)Lcom/amazon/krf/platform/KRFView;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/amazon/krf/platform/WebviewPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFResourceProvider;)Lcom/amazon/krf/platform/KRFResourceProvider;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mResourceProvider:Lcom/amazon/krf/platform/KRFResourceProvider;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/krf/platform/WebviewPlugin;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/krf/platform/WebviewPlugin;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/krf/platform/WebviewPlugin;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/krf/platform/WebviewPlugin;->loadContentIfReady()V

    return-void
.end method

.method static synthetic access$402(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/Rect25D;)Lcom/amazon/krf/platform/Rect25D;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/krf/platform/WebviewPlugin;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/krf/platform/WebviewPlugin;->internalUpdateLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/krf/platform/WebviewPlugin;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/krf/platform/WebviewPlugin;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/krf/platform/WebviewPlugin;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/krf/platform/WebviewPlugin;)D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayDelay:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/WebviewPlugin;->internalSetParentView(Lcom/amazon/krf/platform/KRFView;)V

    return-void
.end method

.method private internalSetParentView(Lcom/amazon/krf/platform/KRFView;)V
    .locals 6

    .line 234
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 235
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 238
    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    .line 242
    iput-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    .line 243
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    if-eqz p1, :cond_6

    .line 246
    new-instance p1, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    .line 249
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 252
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 255
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 258
    iget-boolean p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mBackgroundTransparent:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleContentToFit:Z

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 264
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleContentToFit:Z

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 267
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    iget-boolean v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleContentToFit:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleFactor:D

    mul-double v4, v4, v2

    double-to-int v2, v4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 270
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 273
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    .line 274
    iget-object v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUserInteractionEnabled:Z

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 279
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUserInteractionEnabled:Z

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 280
    iget-boolean p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUserInteractionEnabled:Z

    if-nez p1, :cond_4

    .line 281
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    :cond_4
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$7;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/WebviewPlugin$7;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 292
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$8;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/WebviewPlugin$8;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 312
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 314
    invoke-direct {p0}, Lcom/amazon/krf/platform/WebviewPlugin;->internalUpdateLayout()V

    .line 317
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mIsVisible:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 322
    iget-boolean p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mIsVisible:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayEnabled:Z

    if-eqz p1, :cond_6

    .line 323
    iget-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mLoadWebViewRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayDelay:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method private internalUpdateLayout()V
    .locals 3

    .line 164
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 165
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/Rect25D;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/Rect25D;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    const/4 v2, -0x1

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/Rect25D;->getX()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 170
    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/Rect25D;->getY()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 171
    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private loadContentIfReady()V
    .locals 3

    .line 378
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 379
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mResourceProvider:Lcom/amazon/krf/platform/KRFResourceProvider;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_4

    .line 380
    invoke-static {v0}, Lcom/amazon/krf/platform/WebViewClientYJ;->createInstance(Lcom/amazon/krf/platform/KRFResourceProvider;)Lcom/amazon/krf/platform/WebViewClientYJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/krf/platform/ResourceProviderUtils;->getResourceIdFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mParent:Lcom/amazon/krf/platform/KRFView;

    if-eqz v2, :cond_1

    .line 394
    invoke-virtual {v2}, Lcom/amazon/krf/platform/KRFView;->getBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 396
    invoke-interface {v2}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v1

    .line 399
    :cond_1
    invoke-static {v1, v0}, Lcom/amazon/krf/platform/WebViewClientYJ;->createUri(Lcom/amazon/krf/platform/KRFBookInfo;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 402
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mWebview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private release()V
    .locals 1

    .line 469
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$9;

    invoke-direct {v0, p0}, Lcom/amazon/krf/platform/WebviewPlugin$9;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public attached()V
    .locals 0

    return-void
.end method

.method public detaching()V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/amazon/krf/platform/WebviewPlugin;->release()V

    return-void
.end method

.method public execute(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/AbstractMap$SimpleEntry;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 347
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 348
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 349
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 350
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "setContentResourceUri"

    .line 352
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUri:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "setAutomaticallyPlay"

    .line 354
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayEnabled:Z

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "setBackgroundTransparent"

    .line 356
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 357
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mBackgroundTransparent:Z

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "setAutomaticPlayDelay"

    .line 358
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayDelay:D

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "setUserInteractionEnabled"

    .line 360
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 361
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUserInteractionEnabled:Z

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "setScaleContentToFit"

    .line 362
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 363
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleContentToFit:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "setResourceProvider"

    .line 364
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 365
    check-cast v1, Lcom/amazon/krf/platform/KRFResourceProvider;

    iput-object v1, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mResourceProvider:Lcom/amazon/krf/platform/KRFResourceProvider;

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAutomaticPlayDelay()D
    .locals 2

    .line 454
    iget-wide v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayDelay:D

    return-wide v0
.end method

.method public getAutomaticPlayEnabled()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mAutomaticPlayEnabled:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "WebViewPlugin"

    return-object v0
.end method

.method public getResourceProvider()Lcom/amazon/krf/platform/KRFResourceProvider;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mResourceProvider:Lcom/amazon/krf/platform/KRFResourceProvider;

    return-object v0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleContentToFit()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleContentToFit:Z

    return v0
.end method

.method public getScaleFactor()D
    .locals 2

    .line 223
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 224
    iget-wide v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mScaleFactor:D

    return-wide v0
.end method

.method public getTransparentBackgroundEnabled()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mBackgroundTransparent:Z

    return v0
.end method

.method public getUserInteractionEnabled()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/amazon/krf/platform/WebviewPlugin;->mUserInteractionEnabled:Z

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setParentView(Lcom/amazon/krf/platform/KRFView;)V
    .locals 1

    .line 193
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/WebviewPlugin$5;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/KRFView;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRect(Lcom/amazon/krf/platform/Rect25D;)V
    .locals 1

    .line 139
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/WebviewPlugin$3;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;Lcom/amazon/krf/platform/Rect25D;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScaleFactor(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 204
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/krf/platform/WebviewPlugin$6;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;D)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 177
    new-instance v0, Lcom/amazon/krf/platform/WebviewPlugin$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/WebviewPlugin$4;-><init>(Lcom/amazon/krf/platform/WebviewPlugin;Z)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
