.class public Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;
.super Lcom/amazon/nwstd/model/replica/ReplicaCanvas;
.source "SingleReplicaCanvas.java"


# static fields
.field private static final MAX_WAIT_TIME:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private img:Landroid/graphics/Bitmap;

.field private mInitialBitmapLoadReady:Z

.field private m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

.field private m_sub1:Landroid/graphics/Bitmap;

.field private m_sub2:Landroid/graphics/Bitmap;

.field private m_subBitmapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 370
    const-class v0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;IIILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 6

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;I)V

    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_subBitmapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->mInitialBitmapLoadReady:Z

    if-eqz p5, :cond_0

    .line 44
    iget-object v0, p5, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 45
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    .line 46
    iget-object p1, p5, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 47
    invoke-virtual {p0, p3, p4}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->forceInitialSize(II)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V
    .locals 6

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;I)V

    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_subBitmapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->mInitialBitmapLoadReady:Z

    if-le p4, p5, :cond_0

    .line 25
    div-int/lit8 p4, p4, 0x2

    :cond_0
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_subBitmapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$402(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    return-object p1
.end method

.method static synthetic access$502(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->mInitialBitmapLoadReady:Z

    return p1
.end method

.method private computeWantedSizes(II)Landroid/graphics/Point;
    .locals 4

    if-le p1, p2, :cond_0

    .line 356
    div-int/lit8 p1, p1, 0x2

    .line 359
    :cond_0
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->referenceImageRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    int-to-float v1, p1

    int-to-float v2, p2

    mul-float v3, v2, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    mul-float v2, v2, v0

    float-to-int p1, v2

    goto :goto_0

    :cond_1
    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 367
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private init(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V
    .locals 6

    .line 55
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->referenceImageRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    int-to-float v1, p4

    int-to-float v2, p5

    mul-float v3, v2, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    mul-float v2, v2, v0

    float-to-int p4, v2

    goto :goto_0

    :cond_0
    div-float/2addr v1, v0

    float-to-int p5, v1

    :cond_1
    :goto_0
    move v2, p4

    move v3, p5

    .line 66
    sget-object p4, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq p3, p4, :cond_3

    sget-object p4, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p3, p4, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    new-instance v5, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$1;-><init>(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider;II)V

    move-object v0, p1

    move v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    goto :goto_3

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {p1, p2, v2, v3, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 70
    iget-object p2, p1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    .line 71
    iget-object p1, p1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    .line 74
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 77
    :goto_2
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    .line 78
    invoke-virtual {p0, v2, v3}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->forceInitialSize(II)V

    :cond_5
    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->mInitialBitmapLoadReady:Z

    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 243
    iput-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    .line 245
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_subBitmapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    iput-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    iput-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    .line 255
    :cond_2
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

    .line 245
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public detachBitmaps()[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
    .locals 6

    .line 263
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    .line 266
    new-instance v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    invoke-direct {v3}, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 267
    aget-object v3, v1, v4

    iget-object v5, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    iput-object v5, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 268
    aget-object v3, v1, v4

    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput-object v4, v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 269
    iput-object v2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    move-object v2, v1

    .line 271
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 10

    .line 173
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 177
    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 180
    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    sget-object v5, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v4, v5, :cond_0

    .line 181
    new-instance p2, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p2, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    iget v6, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    float-to-int v1, v6

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float p2, p2, v3

    float-to-int p2, p2

    invoke-direct {v2, v4, v5, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p2, v2

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->img:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    :cond_1
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_subBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_1
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 197
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 198
    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 200
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v5, v5

    iget v6, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    iget v7, p2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float v7, v7, v1

    float-to-int v1, v7

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float p2, p2, v3

    float-to-int p2, p2

    invoke-direct {v4, v5, v6, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 211
    iget v1, v4, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    if-gt v1, p2, :cond_3

    .line 212
    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v1, v5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 215
    :goto_1
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v5, v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    .line 216
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    iget v9, p3, Landroid/graphics/Rect;->right:I

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 219
    new-instance v3, Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v7, v8, v9, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    iget-object v7, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub1:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7, v3, v6, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    if-nez v1, :cond_5

    .line 226
    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, p2

    .line 227
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p2

    invoke-direct {v1, v3, v2, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    new-instance p2, Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v2, v5, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 232
    iget-object p3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_sub2:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3, v1, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 234
    :cond_6
    monitor-exit v0

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method protected forceInitialSize(II)V
    .locals 4

    .line 124
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->referenceImageRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 125
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    .line 126
    iput p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    goto :goto_0

    :cond_0
    int-to-float v1, p1

    int-to-float v2, p2

    mul-float v3, v2, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 129
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    div-float/2addr v1, v0

    float-to-int p1, v1

    .line 130
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    goto :goto_0

    .line 133
    :cond_1
    iput p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    mul-float v2, v2, v0

    float-to-int p1, v2

    .line 134
    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    :goto_0
    return-void
.end method

.method public getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReady()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->mInitialBitmapLoadReady:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 9

    .line 277
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->m_currentQuality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v1, p3, :cond_0

    const/4 p1, 0x0

    .line 282
    monitor-exit v0

    return-object p1

    .line 284
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->computeWantedSizes(II)Landroid/graphics/Point;

    move-result-object p1

    .line 291
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 292
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 294
    iget-object v6, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget v7, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->index:I

    new-instance v8, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas$2;-><init>(Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;IILcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    move-object v0, v6

    move v1, v7

    move v2, p2

    move v3, p1

    move-object v4, p3

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 284
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateReferenceCanvasSize(II)V
    .locals 0

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->computeWantedSizes(II)Landroid/graphics/Point;

    move-result-object p1

    .line 351
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, p1}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->forceInitialSize(II)V

    return-void
.end method

.method public waitForInit()V
    .locals 8

    .line 148
    iget-boolean v0, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->mInitialBitmapLoadReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    monitor-enter v0

    .line 153
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 154
    :cond_1
    iget-boolean v3, p0, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->mInitialBitmapLoadReady:Z

    if-nez v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    .line 159
    sget-object v1, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;->TAG:Ljava/lang/String;

    const-string v2, "Wait timeout reached. We may have a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 165
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 167
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
