.class public interface abstract Lcom/amazon/falkor/download/PageDownloadListener;
.super Ljava/lang/Object;
.source "EpisodeListDownload.kt"


# virtual methods
.method public abstract onPageDownloadFailed()V
.end method

.method public abstract onPageDownloadSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;)V"
        }
    .end annotation
.end method
