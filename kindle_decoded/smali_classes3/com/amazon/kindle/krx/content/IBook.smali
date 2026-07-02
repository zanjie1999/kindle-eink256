.class public interface abstract Lcom/amazon/kindle/krx/content/IBook;
.super Ljava/lang/Object;
.source "IBook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/content/IBook$BookContentClass;,
        Lcom/amazon/kindle/krx/content/IBook$ReadState;,
        Lcom/amazon/kindle/krx/content/IBook$DownloadState;
    }
.end annotation


# virtual methods
.method public abstract getASIN()Ljava/lang/String;
.end method

.method public abstract getAuthors()Ljava/lang/String;
.end method

.method public abstract getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;
.end method

.method public abstract getBookId()Ljava/lang/String;
.end method

.method public abstract getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
.end method

.method public abstract getContentLanguage()Ljava/lang/String;
.end method

.method public abstract getContentType()Lcom/amazon/kindle/krx/content/ContentType;
.end method

.method public abstract getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;
.end method

.method public abstract getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getFpr()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;
.end method

.method public abstract getLpr()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getMrpr()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getOriginType()Ljava/lang/String;
.end method

.method public abstract getParentAsin()Ljava/lang/String;
.end method

.method public abstract getPublicationDate()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPublicationDateInMillis()J
.end method

.method public abstract getPublisher()Ljava/lang/String;
.end method

.method public abstract getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
.end method

.method public abstract getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
.end method

.method public abstract getReadingProgress()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasRecaps()Z
.end method

.method public abstract isArchivable()Z
.end method

.method public abstract isDictionary()Z
.end method

.method public abstract isFalkorEpisode()Z
.end method

.method public abstract isFixedLayout()Z
.end method

.method public abstract isFreeTrial()Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isIllustrated()Z
.end method
