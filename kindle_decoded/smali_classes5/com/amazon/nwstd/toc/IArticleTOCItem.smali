.class public interface abstract Lcom/amazon/nwstd/toc/IArticleTOCItem;
.super Ljava/lang/Object;
.source "IArticleTOCItem.java"

# interfaces
.implements Lcom/amazon/android/docviewer/ITOCItem;


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getImage()Lcom/amazon/android/docviewer/ImageProvider;
.end method

.method public abstract getRelatedReplicaPageId(I)Ljava/lang/String;
.end method

.method public abstract getSection()Lcom/amazon/nwstd/toc/ISectionTOCItem;
.end method

.method public abstract isAvailable()Z
.end method
