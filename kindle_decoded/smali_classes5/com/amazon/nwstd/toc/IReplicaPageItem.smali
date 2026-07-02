.class public interface abstract Lcom/amazon/nwstd/toc/IReplicaPageItem;
.super Ljava/lang/Object;
.source "IReplicaPageItem.java"

# interfaces
.implements Lcom/amazon/android/docviewer/ITOCItem;


# virtual methods
.method public abstract getArticleBlocks()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/nwstd/toc/IArticleBlocks;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArticleFragmentPosition()I
.end method

.method public abstract getCrossReplicaLink()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/nwstd/toc/ICrossReplicaLink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImage()Lcom/amazon/android/docviewer/ImageProvider;
.end method

.method public abstract getImageRatio()F
.end method

.method public abstract getPageIdentifier()Ljava/lang/String;
.end method

.method public abstract getThumbnailImage()Lcom/amazon/android/docviewer/ImageProvider;
.end method
