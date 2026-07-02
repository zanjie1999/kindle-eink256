.class Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;
.super Ljava/lang/Object;
.source "BitmapLoadJobImpl.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/Job;
.implements Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;


# instance fields
.field private bitmapID:I

.field private c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackCalled:Z

.field private mIsCanceled:Z

.field private mIsFinished:Z

.field private observer:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

.field private provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProviderObserver;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/model/replica/BitmapProvider;",
            "I",
            "Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mIsCanceled:Z

    .line 12
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mCallbackCalled:Z

    .line 13
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 14
    iput p2, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->bitmapID:I

    .line 15
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->observer:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    .line 16
    iput-object p4, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 55
    monitor-enter p0

    const/4 v0, 0x1

    .line 56
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mIsCanceled:Z

    .line 58
    iget-boolean v1, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mCallbackCalled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return v0

    .line 61
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    monitor-enter p0

    .line 37
    :try_start_2
    iget-boolean v1, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mIsCanceled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 38
    iget-object v1, v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->provider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->observer:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 45
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->observer:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    iget v3, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->bitmapID:I

    invoke-interface {v1, v3, v0}, Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;->onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V

    .line 46
    iput-boolean v2, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mCallbackCalled:Z

    .line 49
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;->mIsFinished:Z

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
