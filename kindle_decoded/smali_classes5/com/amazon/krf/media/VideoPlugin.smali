.class public Lcom/amazon/krf/media/VideoPlugin;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Lcom/amazon/krf/media/IVideoPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.krf.media.VideoPlugin"


# instance fields
.field private mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mIsVisible:Z

.field private mLastVideoState:Lcom/amazon/krf/media/MediaState;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

.field private final mOnMediaPlayerStateChangedListener:Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;

.field private mParentView:Lcom/amazon/krf/platform/KRFView;

.field private mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

.field private mShouldDisplayControls:Z

.field private mUriString:Ljava/lang/String;

.field private mVideoView:Lcom/amazon/krf/media/KRFVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mShouldDisplayControls:Z

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mIsVisible:Z

    .line 119
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/VideoPlugin$1;-><init>(Lcom/amazon/krf/media/VideoPlugin;)V

    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$2;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/VideoPlugin$2;-><init>(Lcom/amazon/krf/media/VideoPlugin;)V

    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mOnMediaPlayerStateChangedListener:Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/krf/media/VideoPlugin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/krf/media/VideoPlugin;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/krf/media/VideoPlugin;->mUriString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/MediaController;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/krf/media/VideoPlugin;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$102(Lcom/amazon/krf/media/VideoPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mUriString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/KRFView;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/krf/media/VideoPlugin;->internalSetParentView(Lcom/amazon/krf/platform/KRFView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->unregisterBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/platform/KRFView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/KRFView;)Lcom/amazon/krf/platform/KRFView;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->internalToggleVideoPlayback()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->launchFullscreenVideoActivity()V

    return-void
.end method

.method static synthetic access$1600(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->internalStopAndResetMediaPlayer()V

    return-void
.end method

.method static synthetic access$1702(Lcom/amazon/krf/media/VideoPlugin;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mShouldDisplayControls:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/MediaState;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/krf/media/VideoPlugin;->mLastVideoState:Lcom/amazon/krf/media/MediaState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/media/MediaState;)Lcom/amazon/krf/media/MediaState;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mLastVideoState:Lcom/amazon/krf/media/MediaState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/IMediaPlayer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/krf/media/VideoPlugin;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/media/KRFVideoView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/media/KRFVideoView;)Lcom/amazon/krf/media/KRFVideoView;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->internalSetController()V

    return-void
.end method

.method static synthetic access$702(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/Rect25D;)Lcom/amazon/krf/platform/Rect25D;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->internalUpdateLayout()V

    return-void
.end method

.method static synthetic access$902(Lcom/amazon/krf/media/VideoPlugin;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mIsVisible:Z

    return p1
.end method

.method private createAndConfigureInlineVideoView(Landroid/content/Context;)Lcom/amazon/krf/media/KRFVideoView;
    .locals 1

    .line 398
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 400
    invoke-virtual {p0, p1}, Lcom/amazon/krf/media/VideoPlugin;->createVideoView(Landroid/content/Context;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object p1

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 405
    invoke-virtual {p1}, Landroid/widget/VideoView;->clearFocus()V

    .line 408
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    return-object p1
.end method

.method private internalSetController()V
    .locals 2

    .line 455
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 457
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mShouldDisplayControls:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/VideoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    if-nez v0, :cond_3

    .line 463
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    .line 464
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    .line 471
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private internalSetParentView(Lcom/amazon/krf/platform/KRFView;)V
    .locals 7

    .line 319
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 321
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 327
    sget-object v0, Lcom/amazon/krf/media/VideoPlugin;->TAG:Ljava/lang/String;

    const-string v1, "Overriding parent view."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->release()V

    .line 331
    :cond_2
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    if-eqz p1, :cond_4

    .line 336
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/krf/media/VideoPlugin;->createAndConfigureInlineVideoView(Landroid/content/Context;)Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    const/16 v1, 0x8

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 339
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 341
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/amazon/krf/media/VideoPlugin;->mIsVisible:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance p1, Lcom/amazon/krf/media/InlineVideoPlayer;

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-direct {p1, v0}, Lcom/amazon/krf/media/InlineVideoPlayer;-><init>(Lcom/amazon/krf/media/KRFVideoView;)V

    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    .line 352
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mOnMediaPlayerStateChangedListener:Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;

    invoke-interface {p1, v0}, Lcom/amazon/krf/media/IMediaPlayer;->addOnStateChangedListener(Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;)V

    .line 353
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mUriString:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/krf/media/IMediaPlayer;->notifyMediaURIAvailable(Ljava/lang/String;)V

    .line 355
    new-instance p1, Lcom/amazon/krf/media/VideoPlugin$8;

    invoke-direct {p1, p0}, Lcom/amazon/krf/media/VideoPlugin$8;-><init>(Lcom/amazon/krf/media/VideoPlugin;)V

    .line 383
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->internalSetController()V

    .line 386
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->internalUpdateLayout()V

    :cond_4
    return-void
.end method

.method private internalStopAndResetMediaPlayer()V
    .locals 1

    .line 513
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 515
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    :cond_0
    return-void
.end method

.method private internalToggleVideoPlayback()V
    .locals 1

    .line 496
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 498
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 499
    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->pause()V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    invoke-interface {v0}, Lcom/amazon/krf/media/IMediaPlayer;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method private internalUpdateLayout()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 180
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/Rect25D;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/krf/media/VideoPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/Rect25D;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    const/4 v2, -0x1

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/Rect25D;->getX()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 188
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mRectInScreenCoords:Lcom/amazon/krf/platform/Rect25D;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/Rect25D;->getY()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 189
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private launchFullscreenVideoActivity()V
    .locals 3

    .line 198
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 200
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/amazon/krf/media/VideoPlugin;->registerBroadcastReceiver()V

    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    sget-object v1, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_RESOURCE_URI:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/krf/media/VideoPlugin;->mUriString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    sget-object v1, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_INITIAL_POSITION:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/krf/media/VideoPlugin;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    sget-object v1, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_SHOW_CONTROLS:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/krf/media/VideoPlugin;->mShouldDisplayControls:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 530
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 532
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mUriString:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/amazon/krf/media/FullscreenVideoActivity;->ACTION_NOTIFY_VIDEO_STATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mUriString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mParentView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 540
    iget-object v2, p0, Lcom/amazon/krf/media/VideoPlugin;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private release()V
    .locals 1

    .line 566
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$12;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/VideoPlugin$12;-><init>(Lcom/amazon/krf/media/VideoPlugin;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .line 552
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 554
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method


# virtual methods
.method public attached()V
    .locals 0

    return-void
.end method

.method protected createVideoView(Landroid/content/Context;)Lcom/amazon/krf/media/KRFVideoView;
    .locals 1

    .line 613
    new-instance v0, Lcom/amazon/krf/media/KRFVideoView;

    invoke-direct {v0, p1}, Lcom/amazon/krf/media/KRFVideoView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detaching()V
    .locals 1

    .line 427
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$9;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/VideoPlugin$9;-><init>(Lcom/amazon/krf/media/VideoPlugin;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaController()Landroid/widget/MediaController;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method public getMediaPlayer()Lcom/amazon/krf/media/IMediaPlayer;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin;->mMediaPlayer:Lcom/amazon/krf/media/IMediaPlayer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoPlugin"

    return-object v0
.end method

.method public notifyVideoURIAvailable(Ljava/lang/String;)V
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoURIAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$11;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/media/VideoPlugin$11;-><init>(Lcom/amazon/krf/media/VideoPlugin;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 259
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$6;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/VideoPlugin$6;-><init>(Lcom/amazon/krf/media/VideoPlugin;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 281
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$7;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/VideoPlugin$7;-><init>(Lcom/amazon/krf/media/VideoPlugin;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setParentView(Lcom/amazon/krf/platform/KRFView;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/media/VideoPlugin$5;-><init>(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/KRFView;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRect(Lcom/amazon/krf/platform/Rect25D;)V
    .locals 1

    .line 163
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/media/VideoPlugin$3;-><init>(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/Rect25D;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScaleFactor(D)V
    .locals 0

    return-void
.end method

.method public setShouldDisplayControls(Z)V
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShouldDisplayControls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$10;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/media/VideoPlugin$10;-><init>(Lcom/amazon/krf/media/VideoPlugin;Z)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/amazon/krf/media/VideoPlugin$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/media/VideoPlugin$4;-><init>(Lcom/amazon/krf/media/VideoPlugin;Z)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
