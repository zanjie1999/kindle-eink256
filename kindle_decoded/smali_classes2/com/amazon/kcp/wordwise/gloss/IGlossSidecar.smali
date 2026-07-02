.class public interface abstract Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;
.super Ljava/lang/Object;
.source "IGlossSidecar.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAcr()Ljava/lang/String;
.end method

.method public abstract getFtueMarketplaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGlossDictionary()Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;
.end method

.method public abstract getSidecarBookRevision()Ljava/lang/String;
.end method

.method public abstract getSidecarEntriesBetween(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSidecarRevision()Ljava/lang/Integer;
.end method

.method public abstract open()Z
.end method
