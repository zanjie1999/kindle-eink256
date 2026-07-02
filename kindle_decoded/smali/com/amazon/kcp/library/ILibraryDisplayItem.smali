.class public interface abstract Lcom/amazon/kcp/library/ILibraryDisplayItem;
.super Ljava/lang/Object;
.source "ILibraryDisplayItem.java"

# interfaces
.implements Lcom/amazon/kcp/library/ICoverCacheable;
.implements Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;


# virtual methods
.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getAsinCount()I
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;
.end method

.method public abstract getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getCoverBookID()Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getGroupItemPosition()Ljava/lang/String;
.end method

.method public abstract getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;
.end method

.method public abstract getItemID()Lcom/amazon/kindle/observablemodel/ItemID;
.end method

.method public abstract getLastAccessed()Ljava/util/Date;
.end method

.method public abstract getOriginType()Ljava/lang/String;
.end method

.method public abstract getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
.end method

.method public abstract getParentAsin()Ljava/lang/String;
.end method

.method public abstract getPublicationDate()Ljava/lang/String;
.end method

.method public abstract getPublicationDateInMillis()J
.end method

.method public abstract getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
.end method

.method public abstract getReadingProgress()I
.end method

.method public abstract getSize()J
.end method

.method public abstract getState()Lcom/amazon/kindle/model/content/ContentState;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/amazon/kcp/library/models/BookType;
.end method

.method public abstract handleClick()Z
.end method

.method public abstract isArchivable()Z
.end method

.method public abstract isComic()Z
.end method

.method public abstract isFalkor()Z
.end method

.method public abstract isFromOrderedSeries()Z
.end method

.method public abstract isGroup()Z
.end method

.method public abstract isKept()Z
.end method

.method public abstract isLocal()Z
.end method

.method public abstract isMultiSelectionEnabled()Z
.end method

.method public abstract isNew()Z
.end method

.method public abstract isPeriodical()Z
.end method

.method public abstract isSample()Z
.end method

.method public abstract refreshItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
.end method

.method public abstract toKrxBook()Lcom/amazon/kindle/krx/content/IBook;
.end method
