.class public interface abstract Lcom/amazon/kcp/library/models/ILibrarySnapshotList;
.super Ljava/lang/Object;
.source "ILibrarySnapshotList.java"


# virtual methods
.method public abstract getContentSnapshot()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWatermarkSnapshotList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/WatermarkSnapshot;",
            ">;"
        }
    .end annotation
.end method
