.class public Lcom/amazon/krf/media/VideoPlayerImpl;
.super Lcom/amazon/krf/media/AudioPlayerImpl;
.source "VideoPlayerImpl.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/amazon/krf/media/IVideoPlayer;
.implements Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayerImpl"

.field private static final kInvalidFrameTime:I = -0x1


# instance fields
.field private m_hasFrameAvailable:Z

.field private m_openGLESTexture:I

.field private m_renderedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private m_surface:Landroid/view/Surface;

.field private m_surfaceHasContent:Z

.field private m_texture:Landroid/graphics/SurfaceTexture;

.field private m_uvTransform:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 24
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_uvTransform:[F

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->setPauseOnCompletion(Z)V

    .line 34
    invoke-virtual {p0, p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->setMediaPlayerLifecycleListener(Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;)V

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_renderedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public finalizeGC()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 109
    iget v3, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_openGLESTexture:I

    aput v3, v2, v1

    .line 110
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 113
    :goto_0
    iput v1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_openGLESTexture:I

    return-void
.end method

.method public getTotalUniqueFramesRendered()J
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_renderedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUVTransform()[F
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_uvTransform:[F

    return-object v0
.end method

.method public initGC(I)V
    .locals 2

    .line 59
    iput p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_openGLESTexture:I

    .line 60
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 68
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    .line 70
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surface:Landroid/view/Surface;

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    .line 77
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surface:Landroid/view/Surface;

    if-nez p1, :cond_2

    .line 81
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surface:Landroid/view/Surface;

    .line 82
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 84
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "VideoPlayerImpl"

    const-string v1, "initGC exception"

    .line 86
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-virtual {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->release()V

    .line 96
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->getPlaybackPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->seekTo(I)V

    return-void
.end method

.method public declared-synchronized needsRedraw()Z
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_hasFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 137
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_renderedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 143
    :try_start_0
    iput-boolean p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_hasFrameAvailable:Z

    .line 144
    iput-boolean p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surfaceHasContent:Z

    .line 145
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_renderedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onMediaPlayerCreated(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surface:Landroid/view/Surface;

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onMediaPlayerDestroyed(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 162
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 167
    iput-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surface:Landroid/view/Surface;

    :cond_1
    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surfaceHasContent:Z

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->prepareAsync()V

    return-void
.end method

.method public declared-synchronized updateVideoTexture()Z
    .locals 3

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_surfaceHasContent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 51
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_texture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_uvTransform:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 52
    iput-boolean v1, p0, Lcom/amazon/krf/media/VideoPlayerImpl;->m_hasFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 53
    monitor-exit p0

    return v0

    .line 48
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
