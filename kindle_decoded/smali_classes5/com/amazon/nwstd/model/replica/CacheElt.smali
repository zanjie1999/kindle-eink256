.class Lcom/amazon/nwstd/model/replica/CacheElt;
.super Ljava/lang/Object;
.source "CacheElt.java"


# instance fields
.field b:Landroid/graphics/Bitmap;

.field height:I

.field id:I

.field isLocked:Ljava/util/concurrent/Semaphore;

.field quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

.field private ref:I

.field width:I


# direct methods
.method constructor <init>(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->id:I

    .line 20
    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->ref:I

    .line 22
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->isLocked:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method acquire()V
    .locals 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->isLocked:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted thread in semaphore?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method addRef()V
    .locals 1

    .line 26
    iget v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->ref:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->ref:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 66
    const-class v1, Lcom/amazon/nwstd/model/replica/CacheElt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 67
    check-cast p1, Lcom/amazon/nwstd/model/replica/CacheElt;

    .line 68
    iget v1, p1, Lcom/amazon/nwstd/model/replica/CacheElt;->width:I

    iget v2, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->width:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/amazon/nwstd/model/replica/CacheElt;->height:I

    iget v2, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->height:I

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lcom/amazon/nwstd/model/replica/CacheElt;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method getRefCount()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->ref:I

    return v0
.end method

.method release()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->isLocked:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method removeRef()V
    .locals 5

    .line 30
    iget v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->ref:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->ref:I

    if-ltz v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    aput-object v3, v2, v1

    const-string v1, "Removing too many references (id=%d quality=%s)!"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method tryAcquire()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/CacheElt;->isLocked:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    return v0
.end method
