.class public abstract Lcom/amazon/nwstd/model/replica/ReplicaCanvas;
.super Ljava/lang/Object;
.source "ReplicaCanvas.java"


# instance fields
.field protected imgLock:Ljava/lang/Boolean;

.field protected imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field protected index:I

.field protected m_stretchedHeight:I

.field protected m_stretchedWidth:I

.field protected referenceImageRatio:F


# direct methods
.method protected constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;I)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgLock:Ljava/lang/Boolean;

    .line 15
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->imgProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 16
    iput p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->index:I

    .line 18
    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getReferenceImageRatio()F

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->referenceImageRatio:F

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract detachBitmaps()[Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
.end method

.method public abstract getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;
.end method

.method public getHeight()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->m_stretchedWidth:I

    return v0
.end method

.method public abstract isReady()Z
.end method

.method public abstract updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
.end method

.method public abstract updateReferenceCanvasSize(II)V
.end method

.method public abstract waitForInit()V
.end method
