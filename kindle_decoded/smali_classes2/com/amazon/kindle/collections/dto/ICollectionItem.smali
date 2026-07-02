.class public interface abstract Lcom/amazon/kindle/collections/dto/ICollectionItem;
.super Ljava/lang/Object;
.source "ICollectionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;
    }
.end annotation


# virtual methods
.method public abstract getBookType()Lcom/amazon/kcp/library/models/BookType;
.end method

.method public abstract getCollectionId()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSortOrder()Ljava/lang/Double;
.end method

.method public abstract getSyncId()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;
.end method
