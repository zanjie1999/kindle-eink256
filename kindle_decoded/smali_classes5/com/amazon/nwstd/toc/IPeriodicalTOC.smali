.class public interface abstract Lcom/amazon/nwstd/toc/IPeriodicalTOC;
.super Ljava/lang/Object;
.source "IPeriodicalTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IKindleTOC;


# virtual methods
.method public abstract getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;
.end method

.method public abstract getReplicaPageById(Ljava/lang/String;)Lcom/amazon/nwstd/toc/IReplicaPageItem;
.end method

.method public abstract getReplicaPageItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/IReplicaPageItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSectionAtPosition(I)Lcom/amazon/nwstd/toc/ISectionTOCItem;
.end method

.method public abstract getTOCArticles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/IArticleTOCItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTOCSections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/ISectionTOCItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitleImage()Lcom/amazon/android/docviewer/ImageProvider;
.end method

.method public abstract hasReplicaPageItems()Z
.end method
