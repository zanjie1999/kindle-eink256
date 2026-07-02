.class public Lcom/amazon/krf/media/FullscreenVideoActivity;
.super Landroid/app/Activity;
.source "FullscreenVideoActivity.java"


# static fields
.field public static final ACTION_NOTIFY_VIDEO_STATE:Ljava/lang/String;

.field public static final EXTRA_INITIAL_POSITION:Ljava/lang/String;

.field public static final EXTRA_RESOURCE_URI:Ljava/lang/String;

.field public static final EXTRA_SHOW_CONTROLS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContainerView:Landroid/widget/FrameLayout;

.field private mInitialPosition:I

.field private mMediaController:Landroid/widget/MediaController;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSavedVideoState:Lcom/amazon/krf/media/MediaState;

.field private mShouldDisplayControls:Z

.field private mUriString:Ljava/lang/String;

.field private mVideoView:Lcom/amazon/krf/media/KRFVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".RESOURCE_URI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_RESOURCE_URI:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SHOW_CONTROLS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_SHOW_CONTROLS:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".INITIAL_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_INITIAL_POSITION:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/krf/media/FullscreenVideoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".NotifyVideoState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->ACTION_NOTIFY_VIDEO_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Lcom/amazon/krf/media/FullscreenVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/FullscreenVideoActivity$1;-><init>(Lcom/amazon/krf/media/FullscreenVideoActivity;)V

    iput-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/krf/media/FullscreenVideoActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/krf/media/FullscreenVideoActivity;->toggleVideoPlayback()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/krf/media/FullscreenVideoActivity;Lcom/amazon/krf/media/MediaState$PlaybackState;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/media/FullscreenVideoActivity;->notifyVideoState(Lcom/amazon/krf/media/MediaState$PlaybackState;I)V

    return-void
.end method

.method private createVideoView()V
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/amazon/krf/media/FullscreenVideoActivity;->instantiateVideoView()Lcom/amazon/krf/media/KRFVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    sget-object v1, Lcom/amazon/krf/media/FullscreenVideoActivity;->TAG:Ljava/lang/String;

    const-string v2, "Null video uri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 129
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    new-instance v1, Lcom/amazon/krf/media/FullscreenVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/krf/media/FullscreenVideoActivity$2;-><init>(Lcom/amazon/krf/media/FullscreenVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/media/KRFVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mShouldDisplayControls:Z

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mMediaController:Landroid/widget/MediaController;

    .line 141
    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    return-void
.end method

.method private notifyVideoState(Lcom/amazon/krf/media/MediaState$PlaybackState;I)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mUriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mUriString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/amazon/krf/media/FullscreenVideoActivity;->ACTION_NOTIFY_VIDEO_STATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mUriString:Ljava/lang/String;

    invoke-static {v1, p1, p2, v0}, Lcom/amazon/krf/media/MediaState;->populateIntent(Ljava/lang/String;Lcom/amazon/krf/media/MediaState$PlaybackState;ILandroid/content/Intent;)V

    .line 226
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private toggleVideoPlayback()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->pause()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->start()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected instantiateVideoView()Lcom/amazon/krf/media/KRFVideoView;
    .locals 1

    .line 237
    new-instance v0, Lcom/amazon/krf/media/KRFVideoView;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/KRFVideoView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    .line 209
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/krf/media/MediaState$PlaybackState;->PLAYING:Lcom/amazon/krf/media/MediaState$PlaybackState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/krf/media/MediaState$PlaybackState;->PAUSED:Lcom/amazon/krf/media/MediaState$PlaybackState;

    :goto_0
    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    .line 210
    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 208
    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/media/FullscreenVideoActivity;->notifyVideoState(Lcom/amazon/krf/media/MediaState$PlaybackState;I)V

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 160
    sget-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_RESOURCE_URI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mUriString:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_SHOW_CONTROLS:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mShouldDisplayControls:Z

    .line 162
    sget-object v0, Lcom/amazon/krf/media/FullscreenVideoActivity;->EXTRA_INITIAL_POSITION:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mInitialPosition:I

    .line 164
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mContainerView:Landroid/widget/FrameLayout;

    const/high16 v0, -0x1000000

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 166
    iget-object p1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 168
    invoke-direct {p0}, Lcom/amazon/krf/media/FullscreenVideoActivity;->createVideoView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->stopPlayback()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    new-instance v0, Lcom/amazon/krf/media/MediaState;

    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mUriString:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    .line 176
    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/krf/media/MediaState$PlaybackState;->PLAYING:Lcom/amazon/krf/media/MediaState$PlaybackState;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/krf/media/MediaState$PlaybackState;->PAUSED:Lcom/amazon/krf/media/MediaState$PlaybackState;

    :goto_0
    iget-object v3, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    .line 177
    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/krf/media/MediaState;-><init>(Ljava/lang/String;Lcom/amazon/krf/media/MediaState$PlaybackState;I)V

    iput-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mSavedVideoState:Lcom/amazon/krf/media/MediaState;

    .line 178
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mSavedVideoState:Lcom/amazon/krf/media/MediaState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    if-eqz v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mSavedVideoState:Lcom/amazon/krf/media/MediaState;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Lcom/amazon/krf/media/MediaState;->getPlaybackPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 188
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mInitialPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 193
    iget-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    invoke-virtual {v0}, Lcom/amazon/krf/media/KRFVideoView;->start()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/amazon/krf/media/FullscreenVideoActivity;->mSavedVideoState:Lcom/amazon/krf/media/MediaState;

    return-void
.end method
