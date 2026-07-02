.class public final Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;
.super Lcom/amazon/kcp/reader/Annotation;
.source "DefaultDocViewerAnnotation.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;[B)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[BLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct/range {p0 .. p8}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[BLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[B)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 40
    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p8}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;
    .locals 10

    .line 65
    new-instance v9, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getBookText()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getType()I

    move-result v2

    .line 68
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getUserText()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getState()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->cloneByteArray([B)[B

    move-result-object v7

    .line 73
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getMetadata()Ljava/util/Map;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/Annotation;->getAction()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/amazon/kcp/reader/Annotation;->setAnnotationAction(I)V

    return-object v9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;->clone()Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;

    move-result-object v0

    return-object v0
.end method

.method public setBegin(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public setEnd(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/reader/Annotation;->m_endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method
