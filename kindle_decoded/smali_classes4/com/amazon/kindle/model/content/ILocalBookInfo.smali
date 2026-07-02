.class public interface abstract Lcom/amazon/kindle/model/content/ILocalBookInfo;
.super Ljava/lang/Object;
.source "ILocalBookInfo.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/IListableBook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;
    }
.end annotation


# virtual methods
.method public abstract getAmzGuid()Ljava/lang/String;
.end method

.method public abstract getAuthorPronunciation()Ljava/lang/String;
.end method

.method public abstract getBaseLanguage()Ljava/lang/String;
.end method

.method public abstract getBookFurthestPosition()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBookID()Lcom/amazon/kindle/model/content/IBookID;
.end method

.method public abstract getBookLastPosition()I
.end method

.method public abstract getBookReadingProgress()Ljava/lang/Integer;
.end method

.method public abstract getBookStartingPosition()I
.end method

.method public abstract getCDEBookFormat()Ljava/lang/String;
.end method

.method public abstract getClippingLimit()F
.end method

.method public abstract getContentClass()Lcom/amazon/kindle/model/content/ContentClass;
.end method

.method public abstract getExpirationDate()J
.end method

.method public abstract getExpirationOffset()J
.end method

.method public abstract getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getFileLastModified()J
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;
.end method

.method public abstract getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
.end method

.method public abstract getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
.end method

.method public abstract getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
.end method

.method public abstract getSettingsFileName()Ljava/lang/String;
.end method

.method public abstract getSidecarPath()Ljava/lang/String;
.end method

.method public abstract getTitlePronunciation()Ljava/lang/String;
.end method

.method public abstract getWatermark()Ljava/lang/String;
.end method

.method public abstract hasPublisherFonts()Z
.end method

.method public abstract hasRecaps()Z
.end method

.method public abstract informBookCloseToUser()V
.end method

.method public abstract isFalkorEpisode()Z
.end method

.method public abstract isFixedLayout()Z
.end method

.method public abstract isGenericFixedFormat()Z
.end method

.method public abstract isTextbook()Z
.end method
