.class public interface abstract Lcom/amazon/kindle/krx/library/ILibraryManager;
.super Ljava/lang/Object;
.source "ILibraryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;
    }
.end annotation


# virtual methods
.method public abstract associateUserToContent(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteItem(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract deleteItem(Ljava/lang/String;)V
.end method

.method public abstract deleteItem(Ljava/lang/String;Z)V
.end method

.method public abstract deleteItemLocally(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract deleteItemLocally(Ljava/lang/String;)V
.end method

.method public abstract getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAllContent()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;
.end method

.method public abstract getGroupFromGroupId(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroup;
.end method

.method public abstract getGroupIdFromGroupAsin(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
.end method

.method public abstract listContentsFromOriginType(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseForAsinFromBookId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerAdditionalMetadataProvider(Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;)V
.end method

.method public abstract registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V
.end method

.method public abstract updateBookMetadata(Ljava/lang/String;Z)V
.end method

.method public abstract updateMRPR(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V
.end method
