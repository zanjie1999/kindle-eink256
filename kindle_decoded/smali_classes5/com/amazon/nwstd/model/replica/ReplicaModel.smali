.class public Lcom/amazon/nwstd/model/replica/ReplicaModel;
.super Ljava/lang/Object;
.source "ReplicaModel.java"


# instance fields
.field private imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field private interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

.field private mDoubleTapAreaAreas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/mobi/IInteractiveArea;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleTapAreaAreas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/mobi/IInteractiveArea;",
            ">;"
        }
    .end annotation
.end field

.field private m_numberOfReplicaPages:I

.field private m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

.field private m_replicaCanvas:Lcom/amazon/nwstd/model/replica/ReplicaCanvas;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mDoubleTapAreaAreas:Ljava/util/Vector;

    .line 17
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mSingleTapAreaAreas:Ljava/util/Vector;

    .line 37
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 38
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    .line 39
    iput-object p4, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 41
    iput p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_numberOfReplicaPages:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 45
    new-instance p2, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;

    iget-object p3, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    move-object v0, p2

    move-object v1, p1

    move-object v3, p7

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/DoubleReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_replicaCanvas:Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 48
    new-instance p2, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;

    iget-object p3, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    move-object v0, p2

    move-object v1, p1

    move-object v3, p7

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/nwstd/model/replica/SingleReplicaCanvas;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V

    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_replicaCanvas:Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported number of pages:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_numberOfReplicaPages:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/mapper/PageIndex;Lcom/amazon/nwstd/model/replica/ReplicaCanvas;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mDoubleTapAreaAreas:Ljava/util/Vector;

    .line 17
    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mSingleTapAreaAreas:Ljava/util/Vector;

    .line 68
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 69
    iput-object p3, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    .line 70
    iput-object p4, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 71
    iput p2, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_numberOfReplicaPages:I

    .line 72
    iput-object p5, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_replicaCanvas:Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_replicaCanvas:Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->close()V

    return-void
.end method

.method public getDoubleTapInteractiveAreas()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/mobi/IInteractiveArea;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mDoubleTapAreaAreas:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    iget v2, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_numberOfReplicaPages:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->createDoubleTapInteractiveAreas(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mDoubleTapAreaAreas:Ljava/util/Vector;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mDoubleTapAreaAreas:Ljava/util/Vector;

    return-object v0
.end method

.method public getNumberOfReplicaPages()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_numberOfReplicaPages:I

    return v0
.end method

.method public getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object v0
.end method

.method public getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_replicaCanvas:Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    return-object v0
.end method

.method public getReplicaPageRatio()F
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->imgLoader:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getReferenceImageRatio()F

    move-result v0

    return v0
.end method

.method public getSingleTapInteractiveAreas()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/mobi/IInteractiveArea;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mSingleTapAreaAreas:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->interactiveAreaProvider:Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    iget v2, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_numberOfReplicaPages:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;->createSingleTapInteractiveAreas(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mSingleTapAreaAreas:Ljava/util/Vector;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->mSingleTapAreaAreas:Ljava/util/Vector;

    return-object v0
.end method

.method public updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/ReplicaModel;->m_replicaCanvas:Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 79
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object p1

    return-object p1
.end method
