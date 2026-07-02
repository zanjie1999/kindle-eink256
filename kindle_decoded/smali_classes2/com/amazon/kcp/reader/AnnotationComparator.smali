.class public Lcom/amazon/kcp/reader/AnnotationComparator;
.super Ljava/lang/Object;
.source "AnnotationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 4

    .line 16
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 17
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 20
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    .line 21
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v0, v1, :cond_3

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    if-ne v1, v2, :cond_4

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getCollectionTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getCollectionTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/AnnotationComparator;->compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p1

    return p1
.end method
