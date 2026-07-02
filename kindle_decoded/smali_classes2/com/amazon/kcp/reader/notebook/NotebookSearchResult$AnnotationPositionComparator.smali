.class Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;
.super Ljava/lang/Object;
.source "NotebookSearchResult.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$1;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 0

    .line 276
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 273
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$AnnotationPositionComparator;->compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p1

    return p1
.end method
