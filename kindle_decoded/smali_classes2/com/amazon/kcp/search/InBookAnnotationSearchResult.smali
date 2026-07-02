.class public Lcom/amazon/kcp/search/InBookAnnotationSearchResult;
.super Ljava/lang/Object;
.source "InBookAnnotationSearchResult.java"

# interfaces
.implements Lcom/amazon/kcp/search/ISearchResultWithPosition;


# instance fields
.field private final annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-void
.end method


# virtual methods
.method public getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method
