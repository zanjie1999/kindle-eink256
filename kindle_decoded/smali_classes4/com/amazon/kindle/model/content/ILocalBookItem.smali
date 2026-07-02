.class public interface abstract Lcom/amazon/kindle/model/content/ILocalBookItem;
.super Ljava/lang/Object;
.source "ILocalBookItem.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/ILocalBookInfo;


# virtual methods
.method public abstract createPageLabels()Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;
.end method

.method public abstract getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
.end method

.method public abstract getFurthestPositionRead()I
.end method

.method public abstract getGenericMetadata()Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;
.end method

.method public abstract getIntendedAudience()Lcom/amazon/kindle/model/content/IntendedAudience;
.end method

.method public abstract getKRFVersion()Lcom/amazon/kindle/model/content/KRFVersion;
.end method

.method public abstract getLandmarkPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)I
.end method

.method public abstract getLargeEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
.end method

.method public abstract getLastPositionRead()I
.end method

.method public abstract getLocationFromPosition(I)I
.end method

.method public abstract getOriginType()Ljava/lang/String;
.end method

.method public abstract getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
.end method

.method public abstract getPositionFromLocation(J)I
.end method

.method public abstract getVolumeLabel()Ljava/lang/String;
.end method

.method public abstract hasDictionaryLookups()Z
.end method

.method public abstract hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z
.end method

.method public abstract isBookRead()Z
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract isPageOrientationLocked()Z
.end method

.method public abstract onBookClose()V
.end method

.method public abstract onReadingModeChange(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V
.end method

.method public abstract persistLastPositionReadToSidecar(I)V
.end method

.method public abstract proposeFprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V
.end method

.method public abstract proposeMrprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V
.end method

.method public abstract resolveWithExistingBookId(Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract setBookFurthestPosition(I)V
.end method

.method public abstract setBookLastPosition(I)V
.end method

.method public abstract setBookRead(Z)V
.end method

.method public abstract setBookStartingPosition(I)V
.end method

.method public abstract setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V
.end method

.method public abstract setFurthestPositionRead(I)V
.end method

.method public abstract setLastPositionRead(I)V
.end method

.method public abstract setOpenedBook(Lcom/amazon/kindle/model/content/ILocalBookItemDocument;)V
.end method

.method public abstract setPageLabelFile(Ljava/lang/String;)Z
.end method

.method public abstract showMessage(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;)V
.end method

.method public abstract supportBEVPFVForComics()Z
.end method

.method public abstract supportsAnnotationSync()Z
.end method

.method public abstract supportsLocationToPositionConversion()Z
.end method
