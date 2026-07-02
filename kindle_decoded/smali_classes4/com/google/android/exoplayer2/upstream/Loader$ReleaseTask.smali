.class final Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseTask"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 428
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
