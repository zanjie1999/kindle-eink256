.class public Lcom/amazon/krf/media/KRFVideoView;
.super Landroid/widget/VideoView;
.source "KRFVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/media/KRFVideoView$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final DUCK_VOLUME:F = 0.2f

.field private static final KRF_CLASS_NAME:Ljava/lang/String; = "com.amazon.krf.platform.KRFView"

.field public static final NORMAL_VOLUME:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "KRFVideoView"


# instance fields
.field private mAudioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

.field private mClientOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mClientOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mClientOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mMediaOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mMediaOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mMediaOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Lcom/amazon/krf/media/KRFVideoView$1;

    invoke-direct {p1, p0}, Lcom/amazon/krf/media/KRFVideoView$1;-><init>(Lcom/amazon/krf/media/KRFVideoView;)V

    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 64
    new-instance p1, Lcom/amazon/krf/media/KRFVideoView$2;

    invoke-direct {p1, p0}, Lcom/amazon/krf/media/KRFVideoView$2;-><init>(Lcom/amazon/krf/media/KRFVideoView;)V

    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 79
    new-instance p1, Lcom/amazon/krf/media/KRFVideoView$3;

    invoke-direct {p1, p0}, Lcom/amazon/krf/media/KRFVideoView$3;-><init>(Lcom/amazon/krf/media/KRFVideoView;)V

    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 p1, 0x1

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mAudioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/amazon/krf/media/AudioManagerProxy;->abandonAudioFocus()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/krf/media/KRFVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/krf/media/KRFVideoView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/krf/media/KRFVideoView;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/krf/media/KRFVideoView;->mClientOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/krf/media/KRFVideoView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/krf/media/KRFVideoView;->abandonAudioFocus()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/krf/media/KRFVideoView;->mClientOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/krf/media/KRFVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/krf/media/KRFVideoView;->mClientOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method private requestAudioFocus()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mAudioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/amazon/krf/media/KRFVideoView;->getSystemAudioManager()Lcom/amazon/krf/media/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v1, Lcom/amazon/krf/media/AudioManagerProxy;

    new-instance v2, Lcom/amazon/krf/media/KRFVideoView$AudioFocusChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/krf/media/KRFVideoView$AudioFocusChangeListener;-><init>(Lcom/amazon/krf/media/KRFVideoView;Lcom/amazon/krf/media/KRFVideoView$1;)V

    invoke-direct {v1, v0, v2}, Lcom/amazon/krf/media/AudioManagerProxy;-><init>(Lcom/amazon/krf/media/IAudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    iput-object v1, p0, Lcom/amazon/krf/media/KRFVideoView;->mAudioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mAudioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v0}, Lcom/amazon/krf/media/AudioManagerProxy;->requestAudioFocus()Z

    move-result v0

    const-string v1, "KRFVideoView"

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 252
    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MediaPlayer.setVolume failed"

    .line 254
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v0, "audio focus denied"

    .line 258
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected doPause()V
    .locals 0

    .line 184
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method protected doResume()V
    .locals 0

    .line 193
    invoke-super {p0}, Landroid/widget/VideoView;->resume()V

    return-void
.end method

.method protected doStart()V
    .locals 0

    .line 175
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method protected doStopPlayback()V
    .locals 0

    .line 202
    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method public getAudioManagerProxy()Lcom/amazon/krf/media/AudioManagerProxy;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mAudioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    return-object v0
.end method

.method protected getSystemAudioManager()Lcom/amazon/krf/media/IAudioManager;
    .locals 1

    .line 280
    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krf/media/AudioManagerProxy;->getSystemAudioManager(Landroid/content/Context;)Lcom/amazon/krf/media/IAudioManager;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "com.amazon.krf.platform.KRFView"

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "com.amazon.krf.platform.KRFView"

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/amazon/krf/media/KRFVideoView;->doPause()V

    .line 151
    invoke-direct {p0}, Lcom/amazon/krf/media/KRFVideoView;->abandonAudioFocus()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/krf/media/KRFVideoView;->requestAudioFocus()V

    .line 158
    invoke-virtual {p0}, Lcom/amazon/krf/media/KRFVideoView;->doResume()V

    return-void
.end method

.method protected setMediaPlayerListeners(Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 232
    invoke-super {p0, p2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 233
    invoke-super {p0, p3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView;->mClientOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView;->mClientOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/krf/media/KRFVideoView;->mClientOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v2, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/krf/media/KRFVideoView;->setMediaPlayerListeners(Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/amazon/krf/media/KRFVideoView;->requestAudioFocus()V

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/krf/media/KRFVideoView;->doStart()V

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/amazon/krf/media/KRFVideoView;->doStopPlayback()V

    .line 165
    invoke-direct {p0}, Lcom/amazon/krf/media/KRFVideoView;->abandonAudioFocus()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/amazon/krf/media/KRFVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method
