.class public Lcom/amazon/krf/media/InlineVideoPlayer;
.super Ljava/lang/Object;
.source "InlineVideoPlayer.java"

# interfaces
.implements Lcom/amazon/krf/media/IMediaPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineVideoPlayer"


# instance fields
.field private volatile mCachedDuration:I

.field private mLooping:Z

.field private final mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mOnStateChangedListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseOnPrepared:Z

.field private final mVideoView:Lcom/amazon/krf/media/KRFVideoView;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/media/KRFVideoView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mCachedDuration:I

    .line 41
    iput-boolean v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mPauseOnPrepared:Z

    .line 46
    iput-boolean v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mLooping:Z

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnStateChangedListeners:Ljava/util/Vector;

    .line 57
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$1;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    iput-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 71
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$2;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    iput-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 82
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$3;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    iput-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 107
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    .line 114
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/media/KRFVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/media/KRFVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 116
    iget-object p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Lcom/amazon/krf/media/KRFVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/krf/media/InlineVideoPlayer;)Lcom/amazon/krf/media/KRFVideoView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mVideoView:Lcom/amazon/krf/media/KRFVideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/krf/media/InlineVideoPlayer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/krf/media/InlineVideoPlayer;->notifyOnStateChangedListeners()V

    return-void
.end method

.method static synthetic access$202(Lcom/amazon/krf/media/InlineVideoPlayer;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mCachedDuration:I

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/krf/media/InlineVideoPlayer;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mLooping:Z

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/krf/media/InlineVideoPlayer;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mPauseOnPrepared:Z

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/krf/media/InlineVideoPlayer;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mPauseOnPrepared:Z

    return p1
.end method

.method private internalSeekTo(I)V
    .locals 1

    .line 255
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$10;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/media/InlineVideoPlayer$10;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;I)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private internalStop()V
    .locals 1

    .line 244
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$9;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$9;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyOnStateChangedListeners()V
    .locals 2

    .line 236
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 237
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnStateChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;

    .line 238
    invoke-interface {v1, p0}, Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;->onStateChanged(Lcom/amazon/krf/media/IMediaPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;)V
    .locals 1

    .line 218
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnStateChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnStateChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mCachedDuration:I

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 3

    .line 204
    :try_start_0
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$8;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$8;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaybackPosition() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 184
    :try_start_0
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$7;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$7;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public notifyMediaURIAvailable(Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoURIAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/media/InlineVideoPlayer$4;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 152
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$6;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public play()V
    .locals 1

    .line 139
    new-instance v0, Lcom/amazon/krf/media/InlineVideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/amazon/krf/media/InlineVideoPlayer$5;-><init>(Lcom/amazon/krf/media/InlineVideoPlayer;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/amazon/krf/media/InlineVideoPlayer;->internalStop()V

    return-void
.end method

.method public removeOnStateChangedListener(Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;)V
    .locals 1

    .line 226
    invoke-static {}, Lcom/amazon/krf/platform/ThreadUtils;->assertRunningOnUiThread()V

    .line 227
    iget-object v0, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mOnStateChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(I)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/amazon/krf/media/InlineVideoPlayer;->internalSeekTo(I)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/amazon/krf/media/InlineVideoPlayer;->mLooping:Z

    return-void
.end method

.method public stop()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/amazon/krf/media/InlineVideoPlayer;->internalStop()V

    return-void
.end method
