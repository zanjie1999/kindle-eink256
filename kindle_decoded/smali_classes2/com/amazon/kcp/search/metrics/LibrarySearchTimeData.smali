.class public Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;
.super Ljava/lang/Object;
.source "LibrarySearchTimeData.java"


# instance fields
.field private query:Ljava/lang/String;

.field private queryEntered:J

.field private searchAddToView:J

.field private searchImprovement:Z

.field private searchResultReturned:J

.field private startSearch:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->query:Ljava/lang/String;

    .line 21
    sget-object p1, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->searchImprovement:Z

    return-void
.end method


# virtual methods
.method public getSearchResultReturnedTime()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->searchResultReturned:J

    return-wide v0
.end method

.method public getUniqueDataId()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->queryEntered:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setQueryEnteredTime(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->queryEntered:J

    return-void
.end method

.method public setResultAddToViewTime(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->searchAddToView:J

    return-void
.end method

.method public setSearchResultReturnedTime(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->searchResultReturned:J

    return-void
.end method

.method public setStartSearchTime(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->startSearch:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibrarySearchTimeData{ query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLibrarySearchImprovementEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->searchImprovement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", queryEnteredTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->queryEntered:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startSearchTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->startSearch:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", searchResultReturnedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->searchResultReturned:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", searchResultAddToViewTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->searchAddToView:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
