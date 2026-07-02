.class public final Lcom/google/android/exoplayer2/video/DummySurface;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureSupported:Z

.field private static secureSupportedInitialized:Z


# instance fields
.field private final thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 121
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->release()V

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    .line 137
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
