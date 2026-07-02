.class public Lcom/amazon/kcp/search/InBookContentSearchResult;
.super Ljava/lang/Object;
.source "InBookContentSearchResult.java"

# interfaces
.implements Lcom/amazon/kcp/search/ISearchResultWithPosition;


# instance fields
.field private final positionRange:Lcom/amazon/android/docviewer/IPositionRange;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/IPositionRange;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/search/InBookContentSearchResult;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    return-void
.end method


# virtual methods
.method public getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/search/InBookContentSearchResult;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/search/InBookContentSearchResult;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    return-object v0
.end method

.method public getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/search/InBookContentSearchResult;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method
