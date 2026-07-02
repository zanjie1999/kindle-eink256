.class public Lcom/amazon/krf/internal/KRFBookInfoImpl;
.super Ljava/lang/Object;
.source "KRFBookInfoImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFBookInfo;


# instance fields
.field private nativePtr:J


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFBook;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->createNativePtr(Lcom/amazon/krf/platform/KRFBook;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/krf/internal/KRFBookInfoImpl;->nativePtr:J

    return-void
.end method

.method private static native createNativePtr(Lcom/amazon/krf/platform/KRFBook;)J
.end method

.method private native finalizeNative()V
.end method

.method private native getLandmarkPosition(I)Lcom/amazon/krf/platform/Position;
.end method

.method private native getLandmarkPosition(II)Lcom/amazon/krf/platform/Position;
.end method

.method private native getPublishingDateInISO8601()Ljava/lang/String;
.end method

.method private native getScaledCover(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetFirstPosition(I)Lcom/amazon/krf/platform/Position;
.end method

.method private native nativeGetLastPosition(I)Lcom/amazon/krf/platform/Position;
.end method

.method private static toCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Z"

    const-string v2, "+00:00"

    .line 54
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x16

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 65
    :catch_0
    new-instance v0, Lcom/amazon/krf/exception/KRFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/krf/exception/KRFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :catch_1
    new-instance v0, Lcom/amazon/krf/exception/KRFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Len="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/krf/exception/KRFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance p0, Lcom/amazon/krf/exception/KRFException;

    const-string v0, "Null String for date"

    invoke-direct {p0, v0}, Lcom/amazon/krf/exception/KRFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public native createStringFromMetadata(I)Ljava/lang/String;
.end method

.method public native createStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public dispose()V
    .locals 5

    .line 42
    iget-wide v0, p0, Lcom/amazon/krf/internal/KRFBookInfoImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->finalizeNative()V

    .line 44
    iput-wide v2, p0, Lcom/amazon/krf/internal/KRFBookInfoImpl;->nativePtr:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    throw v0
.end method

.method public native getAsin()Ljava/lang/String;
.end method

.method public native getAuthor()Ljava/lang/String;
.end method

.method public native getBaseLanguage()Ljava/util/Locale;
.end method

.method public native getBookOrientationLock()Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;
.end method

.method public native getCDEContentType()Ljava/lang/String;
.end method

.method public native getClippingLimit()I
.end method

.method public getCover()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0, v0}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->getCover(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCover(II)Landroid/graphics/Bitmap;
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 195
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->getScaledCover(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native getExpirationDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method public getFirstPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
    .locals 0

    .line 170
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->nativeGetFirstPosition(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    return-object p1
.end method

.method public native getGuid()Ljava/lang/String;
.end method

.method public native getIntendedAudience()Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;
.end method

.method public getLandmarkPosition(Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;)Lcom/amazon/krf/platform/Position;
    .locals 0

    .line 217
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->getLandmarkPosition(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    return-object p1
.end method

.method public getLandmarkPosition(Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
    .locals 0

    .line 224
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->getLandmarkPosition(II)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    return-object p1
.end method

.method public getLastPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
    .locals 0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->nativeGetLastPosition(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    return-object p1
.end method

.method public native getLocationFromPosition(Lcom/amazon/krf/platform/Position;)J
.end method

.method public native getMaxLocation()J
.end method

.method public native getMaxPosition()Lcom/amazon/krf/platform/Position;
.end method

.method public native getMimeType()Ljava/lang/String;
.end method

.method public native getOwnershipType()Ljava/lang/String;
.end method

.method public native getPositionFromLocation(J)Lcom/amazon/krf/platform/Position;
.end method

.method public native getPublisher()Ljava/lang/String;
.end method

.method public getPublishingDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->getPublishingDateInISO8601()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krf/internal/KRFBookInfoImpl;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public native getReadingDirection()Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;
.end method

.method public native getTitle()Ljava/lang/String;
.end method

.method public native getUserVisibleLabeling()Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;
.end method

.method public native getWatermark()Ljava/lang/String;
.end method

.method public native hasAnimations()Z
.end method

.method public native hasPublisherFont()Z
.end method

.method public native hasPublisherPanels()Z
.end method

.method public native hasRecaps()Z
.end method

.method public native hasTOC()Z
.end method

.method public native hasTextPopups()Z
.end method

.method public native isDictionary()Z
.end method

.method public native isEncrypted()Z
.end method

.method public native isFixedLayout()Z
.end method

.method public native isFolioMagazine()Z
.end method

.method public native isGenericFixedFormat()Z
.end method

.method public native isGuidedViewNative()Z
.end method

.method public native isIllustrated()Z
.end method

.method public native isMagazine()Z
.end method

.method public native isSample()Z
.end method

.method public native isTTSEnabled()Z
.end method

.method public native isTextbook()Z
.end method

.method public native supportBEVPFVForComics()Z
.end method

.method public native supportsVerticalScrollReflowable()Z
.end method
