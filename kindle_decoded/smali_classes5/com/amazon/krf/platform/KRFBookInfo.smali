.class public interface abstract Lcom/amazon/krf/platform/KRFBookInfo;
.super Ljava/lang/Object;
.source "KRFBookInfo.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;,
        Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;,
        Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;,
        Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;,
        Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;
    }
.end annotation


# virtual methods
.method public abstract createStringFromMetadata(I)Ljava/lang/String;
.end method

.method public abstract createStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAsin()Ljava/lang/String;
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getBaseLanguage()Ljava/util/Locale;
.end method

.method public abstract getBookOrientationLock()Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;
.end method

.method public abstract getCDEContentType()Ljava/lang/String;
.end method

.method public abstract getClippingLimit()I
.end method

.method public abstract getCover()Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCover(II)Landroid/graphics/Bitmap;
.end method

.method public abstract getExpirationDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method public abstract getFirstPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getIntendedAudience()Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;
.end method

.method public abstract getLandmarkPosition(Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getLandmarkPosition(Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getLastPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getLocationFromPosition(Lcom/amazon/krf/platform/Position;)J
.end method

.method public abstract getMaxLocation()J
.end method

.method public abstract getMaxPosition()Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getOwnershipType()Ljava/lang/String;
.end method

.method public abstract getPositionFromLocation(J)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getPublisher()Ljava/lang/String;
.end method

.method public abstract getPublishingDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method public abstract getReadingDirection()Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUserVisibleLabeling()Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;
.end method

.method public abstract getWatermark()Ljava/lang/String;
.end method

.method public abstract hasAnimations()Z
.end method

.method public abstract hasPublisherFont()Z
.end method

.method public abstract hasPublisherPanels()Z
.end method

.method public abstract hasRecaps()Z
.end method

.method public abstract hasTOC()Z
.end method

.method public abstract hasTextPopups()Z
.end method

.method public abstract isDictionary()Z
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract isFixedLayout()Z
.end method

.method public abstract isFolioMagazine()Z
.end method

.method public abstract isGenericFixedFormat()Z
.end method

.method public abstract isGuidedViewNative()Z
.end method

.method public abstract isIllustrated()Z
.end method

.method public abstract isMagazine()Z
.end method

.method public abstract isSample()Z
.end method

.method public abstract isTTSEnabled()Z
.end method

.method public abstract isTextbook()Z
.end method

.method public abstract supportBEVPFVForComics()Z
.end method

.method public abstract supportsVerticalScrollReflowable()Z
.end method
