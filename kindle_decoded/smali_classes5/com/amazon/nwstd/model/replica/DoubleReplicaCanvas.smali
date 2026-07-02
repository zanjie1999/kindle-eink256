.class public Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;
.super Lcom/amazon/nwstd/model/replica/ReplicaCanvas;
.source "DoubleReplicaCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInitialBitmapLoadAsync:Z

.field private mInitialBitmapLoadReady:Z

.field private mNbBitmapsLoaded:I

.field private mNbBitmapsToLoad:I

.field private m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 534
    const-class v0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;III[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 7

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;I)V

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadReady:Z

    if-eqz p5, :cond_0

    .line 37
    iput-object p5, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 38
    invoke-virtual {p0, p3, p4}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->forceInitialSize(II)V

    .line 41
    iput v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsToLoad:I

    goto :goto_0

    .line 43
    :cond_0
    sget-object v4, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    .line 44
    sget-object p1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->TAG:Ljava/lang/String;

    const-string p2, "Warning: Trying to create DoubleReplicaCanvas instance with null initial bitmaps"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;I)V

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadReady:Z

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    return-object p0
.end method

.method static synthetic access$108(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)I
    .locals 2

    .line 15
    iget v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsLoaded:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsLoaded:I

    return v0
.end method

.method private computeWantedSizes(II)Landroid/graphics/Point;
    .locals 4

    .line 469
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->referenceImageRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    int-to-float v1, p1

    int-to-float v2, p2

    mul-float v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    mul-int/lit8 p1, p2, 0x2

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    goto :goto_0

    .line 473
    :cond_0
    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 477
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 50
    iput-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 52
    iget v1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->referenceImageRatio:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    int-to-float v2, p4

    int-to-float v3, p5

    mul-float v3, v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    mul-int/lit8 p4, p5, 0x2

    int-to-float p4, p4

    mul-float p4, p4, v1

    float-to-int p4, p4

    goto :goto_0

    .line 56
    :cond_0
    div-int/lit8 p5, p4, 0x2

    int-to-float p5, p5

    div-float/2addr p5, v1

    float-to-int p5, p5

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p0, p4, p5}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->forceInitialSize(II)V

    .line 61
    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eq p3, v1, :cond_5

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p3, v1, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    iput-boolean v8, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadAsync:Z

    if-nez p2, :cond_3

    .line 82
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v7, v1, v2

    .line 83
    div-int/lit8 v3, p4, 0x2

    new-instance v6, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;

    invoke-direct {v6, p0}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$1;-><init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)V

    move-object v1, p1

    move v2, p2

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 98
    iput v8, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsToLoad:I

    goto/16 :goto_3

    .line 100
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ne p2, v1, :cond_4

    .line 101
    div-int/lit8 v3, p4, 0x2

    new-instance v6, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$2;

    invoke-direct {v6, p0}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$2;-><init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;)V

    move-object v1, p1

    move v2, p2

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 116
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v7, p1, v8

    .line 117
    iput v8, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsToLoad:I

    goto :goto_3

    .line 120
    :cond_4
    div-int/2addr p4, v0

    new-instance v6, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$3;

    invoke-direct {v6, p0, p1}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$3;-><init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider;)V

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    add-int/lit8 v2, p2, 0x1

    .line 139
    new-instance v6, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$4;

    invoke-direct {v6, p0, p1}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$4;-><init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 158
    iput v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsToLoad:I

    goto :goto_3

    .line 62
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadAsync:Z

    if-nez p2, :cond_6

    .line 65
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v7, v1, v2

    .line 66
    div-int/2addr p4, v0

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object p1

    aput-object p1, v1, v8

    goto :goto_2

    .line 68
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ne p2, v1, :cond_7

    .line 69
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    div-int/2addr p4, v0

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object p1

    aput-object p1, v1, v2

    .line 70
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v7, p1, v8

    goto :goto_2

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    div-int/2addr p4, v0

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object v0

    aput-object v0, v1, v2

    .line 74
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    add-int/2addr p2, v8

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object p1

    aput-object p1, v0, v8

    .line 77
    :goto_2
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->onInitialBitmapsLoaded()V

    :goto_3
    return-void
.end method

.method private onInitialBitmapsLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadReady:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 325
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v3, v1, v2

    .line 327
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 329
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v1

    .line 330
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v3, v0, v2

    .line 334
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 327
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public detachBitmaps()[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 346
    iput-object v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    goto :goto_0

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    new-array v1, v4, [Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 350
    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v4, v4, v2

    aput-object v4, v1, v2

    .line 351
    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v3, v4, v2

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    new-array v1, v4, [Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 355
    iget-object v5, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v5, v5, v4

    aput-object v5, v1, v2

    .line 356
    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aput-object v3, v2, v4

    goto :goto_0

    .line 358
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 231
    iget-object v5, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v5

    .line 242
    :try_start_0
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 243
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v11, v6

    mul-float v11, v11, v8

    .line 244
    iget v12, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 245
    iget-object v12, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v12, v12, v7

    iget-object v12, v12, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    :goto_0
    int-to-float v13, v13

    div-float/2addr v12, v13

    goto :goto_1

    .line 246
    :cond_0
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v6, v6, v10

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 248
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v11, v6

    mul-float v11, v11, v8

    .line 249
    iget v12, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 250
    iget-object v12, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v12, v12, v10

    iget-object v12, v12, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 253
    :goto_1
    iget-object v13, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v13, v13, v10

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_2

    .line 254
    iget-object v13, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v8

    .line 255
    iget v8, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    int-to-float v8, v8

    div-float/2addr v13, v8

    .line 256
    iget-object v8, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v14, v1, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    int-to-float v14, v14

    div-float/2addr v8, v14

    goto :goto_2

    :cond_2
    move v13, v11

    move v8, v12

    .line 269
    :goto_2
    iget v14, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    if-gt v14, v15, :cond_3

    .line 270
    iget v14, v2, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    mul-float v14, v14, v11

    float-to-int v14, v14

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 271
    iget v14, v2, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    mul-float v14, v14, v11

    sub-float/2addr v6, v14

    iget v14, v2, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    mul-float v14, v14, v11

    iget v15, v2, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    mul-float v15, v15, v11

    sub-float/2addr v14, v15

    div-float/2addr v6, v14

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 274
    :goto_3
    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float v14, v14, v6

    float-to-int v14, v14

    iget v15, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v15

    .line 275
    new-instance v15, Landroid/graphics/Rect;

    iget v10, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v15, v10, v7, v14, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    .line 278
    iget-object v7, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v7, v7, v9

    iget-object v7, v7, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 284
    iget-object v7, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v7, v7, v9

    iget-object v7, v7, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v10, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v7, v10, :cond_4

    .line 285
    new-instance v7, Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v11, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v7, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v17, v14

    goto :goto_4

    .line 288
    :cond_4
    new-instance v7, Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float v9, v9, v11

    float-to-int v9, v9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float v10, v10, v12

    float-to-int v10, v10

    move/from16 v17, v14

    iget-object v14, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/16 v16, 0x0

    aget-object v14, v14, v16

    iget-object v14, v14, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 293
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float v11, v11, v12

    float-to-int v11, v11

    invoke-direct {v7, v9, v10, v3, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    :goto_4
    iget-object v3, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v9, 0x0

    aget-object v3, v3, v9

    iget-object v3, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v7, v15, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    move/from16 v17, v14

    :goto_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_7

    .line 300
    iget-object v3, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 304
    iget-object v3, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v7, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v3, v7, :cond_6

    .line 305
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v7, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v7, v7, v6

    iget-object v6, v7, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_6

    .line 308
    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v13

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float v7, v7, v8

    float-to-int v7, v7

    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float v9, v9, v13

    float-to-int v9, v9

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float v10, v10, v13

    float-to-int v10, v10

    sub-int/2addr v9, v10

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    invoke-direct {v3, v6, v7, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v3

    .line 313
    :goto_6
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v6, p3

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v14, v17

    invoke-direct {v3, v14, v7, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 316
    :cond_7
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected forceInitialSize(II)V
    .locals 3

    .line 169
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->referenceImageRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 170
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    .line 171
    iput p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    goto :goto_0

    .line 173
    :cond_0
    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    int-to-float v2, p2

    mul-float v2, v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 174
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    div-float/2addr v1, v0

    float-to-int p1, v1

    .line 175
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    goto :goto_0

    .line 178
    :cond_1
    iput p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 179
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    :goto_0
    return-void
.end method

.method public getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 511
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 513
    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 520
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReady()Z
    .locals 3

    .line 185
    iget-boolean v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadAsync:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadReady:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsToLoad:I

    iget v2, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsLoaded:I

    if-ne v1, v2, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->onInitialBitmapsLoaded()V

    .line 193
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadReady:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 11

    .line 367
    sget-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p3, v0, :cond_0

    .line 368
    sget-object p3, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Big:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 377
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    const/4 v6, 0x0

    if-eq p3, v1, :cond_1

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq p3, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v1

    if-ne v1, p3, :cond_1

    .line 378
    monitor-exit v0

    return-object v6

    .line 380
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->computeWantedSizes(II)Landroid/graphics/Point;

    move-result-object p1

    .line 384
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 385
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 389
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v1

    .line 390
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 391
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 393
    iget-object v7, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget v8, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->index:I

    div-int/lit8 v9, p2, 0x2

    new-instance v10, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$5;-><init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;IILcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    move-object v0, v7

    move v1, v8

    move v2, v9

    move v3, p1

    move-object v4, p3

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_2
    move-object v7, v6

    .line 427
    :goto_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 428
    :try_start_2
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->m_currentBitmapInfos:[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 429
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 430
    iget-object v0, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 431
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->index:I

    add-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v1

    .line 435
    :goto_1
    iget-object v8, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    div-int/lit8 v9, p2, 0x2

    new-instance v10, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$6;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$6;-><init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;IILcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    move-object v0, v8

    move v1, v6

    move v2, v9

    move v3, p1

    move-object v4, p3

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v6

    .line 464
    :cond_4
    new-instance p1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;

    invoke-direct {p1, p0, v7, v6}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas$BitmapLoadJobAggregate;-><init>(Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 429
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 391
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 380
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public updateReferenceCanvasSize(II)V
    .locals 0

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->computeWantedSizes(II)Landroid/graphics/Point;

    move-result-object p1

    .line 530
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, p1}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->forceInitialSize(II)V

    return-void
.end method

.method public waitForInit()V
    .locals 8

    .line 200
    iget-boolean v0, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadAsync:Z

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mInitialBitmapLoadReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 207
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 208
    :cond_1
    iget v3, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsToLoad:I

    iget v4, p0, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->mNbBitmapsLoaded:I

    if-eq v3, v4, :cond_2

    .line 209
    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    .line 213
    sget-object v1, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->TAG:Ljava/lang/String;

    const-string v2, "Wait timeout reached. We may have a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;->onInitialBitmapsLoaded()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 222
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 225
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
