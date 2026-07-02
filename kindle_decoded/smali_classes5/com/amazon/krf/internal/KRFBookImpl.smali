.class public Lcom/amazon/krf/internal/KRFBookImpl;
.super Lcom/amazon/krf/internal/NativeObject;
.source "KRFBookImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFBook;


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/NativeObject;-><init>(J)V

    return-void
.end method

.method public static native createBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/krf/platform/KRFBook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/amazon/krf/platform/KRFBook;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method public static native dispatchErrorIfPresent(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation
.end method

.method private native nativeCreateContentViewer(Lcom/amazon/krf/platform/ViewSettings;)J
.end method

.method private native nativeCreateDefaultContentDecorationStyle(I)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method private native nativeGetCachePath()Ljava/lang/String;
.end method

.method private native nativeGetEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/Position;
.end method

.method private native nativeGetReadingModeFromPosition(Lcom/amazon/krf/platform/Position;)I
.end method

.method private native nativeSetCachePath(Ljava/lang/String;)V
.end method


# virtual methods
.method public native attachContainer(Ljava/io/File;)Z
.end method

.method public native createContentDecorationStyle(IIIFF)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method public createContentViewer(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ContentViewer;
    .locals 4

    .line 213
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFBookImpl;->nativeCreateContentViewer(Lcom/amazon/krf/platform/ViewSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 215
    new-instance p1, Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-direct {p1, v0, v1, p0}, Lcom/amazon/krf/internal/ContentViewerImpl;-><init>(JLcom/amazon/krf/internal/KRFBookImpl;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFBookImpl;->nativeCreateDefaultContentDecorationStyle(I)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    return-object p1
.end method

.method public native createGraphicalHighlightStyle(IFF)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method public native createImageForResourceId(Ljava/lang/String;)Lcom/amazon/krf/media/EncodedImage;
.end method

.method public native createImageForResourceName(Ljava/lang/String;)Lcom/amazon/krf/media/EncodedImage;
.end method

.method public createPageInfoProvider()Lcom/amazon/krf/platform/PageInfoProvider;
    .locals 1

    .line 130
    invoke-static {p0}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->createPageInfoProviderImpl(Lcom/amazon/krf/platform/KRFBook;)Lcom/amazon/krf/internal/PageInfoProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public createPageInfoProvider(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/PageInfoProvider;
    .locals 0

    .line 135
    invoke-static {p0, p1}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->createPageInfoProviderImpl(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/internal/PageInfoProviderImpl;

    move-result-object p1

    return-object p1
.end method

.method public native createPosition(J)Lcom/amazon/krf/platform/Position;
.end method

.method public native createPosition(Lcom/amazon/krf/platform/PageInfoProvider;ILandroid/graphics/PointF;)Lcom/amazon/krf/platform/Position;
.end method

.method public native createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;
.end method

.method public createThumbnailRenderer(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)Lcom/amazon/krf/platform/ThumbnailRenderer;
    .locals 0

    .line 140
    invoke-static {p0, p1, p2}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->createThumbnailRendererImpl(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)Lcom/amazon/krf/platform/ThumbnailRenderer;

    move-result-object p1

    return-object p1
.end method

.method public native createUnderlineStyle(IF)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method public native createWordIterator()Lcom/amazon/krf/platform/WordIterator;
.end method

.method public createWordIterator(I)Lcom/amazon/krf/platform/WordIterator;
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/amazon/krf/internal/KRFBookImpl;->createWordIterator(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/WordIterator;

    move-result-object p1

    return-object p1
.end method

.method public createWordIterator(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/WordIterator;
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/internal/KRFBookImpl;->createWordIterator(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/WordIterator;

    move-result-object p1

    return-object p1
.end method

.method public native createWordIterator(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/WordIterator;
.end method

.method public native createWordIterator(Lcom/amazon/krf/platform/Position;II)Lcom/amazon/krf/platform/WordIterator;
.end method

.method public createWordIterator(Lcom/amazon/krf/platform/Position;ILcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/WordIterator;
    .locals 0

    .line 180
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/krf/internal/KRFBookImpl;->createWordIterator(Lcom/amazon/krf/platform/Position;II)Lcom/amazon/krf/platform/WordIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/amazon/krf/internal/NativeObject;->dispose()V

    return-void
.end method

.method public native extractPointFromPosition(Lcom/amazon/krf/platform/Position;)Landroid/graphics/PointF;
.end method

.method public declared-synchronized getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    new-instance v0, Lcom/amazon/krf/internal/KRFBookInfoImpl;

    invoke-direct {v0, p0}, Lcom/amazon/krf/internal/KRFBookInfoImpl;-><init>(Lcom/amazon/krf/platform/KRFBook;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFBookImpl;->nativeGetCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getCapabilities()Lcom/amazon/krf/platform/KRFCapabilities;
.end method

.method public native getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/Position;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
    .locals 0

    .line 117
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/KRFBookImpl;->nativeGetEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHandle()J
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/amazon/krf/internal/NativeObject;->getHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/amazon/krf/internal/KRFBookImpl;->getHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method public native getNavigationControl()Lcom/amazon/krf/platform/NavigationControl;
.end method

.method public getReadingModeFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFBookImpl;->nativeGetReadingModeFromPosition(Lcom/amazon/krf/platform/Position;)I

    move-result p1

    invoke-static {p1}, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object p1

    return-object p1
.end method

.method public setCachePath(Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFBookImpl;->nativeSetCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public native setContentDecorationDataProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V
.end method

.method public native setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V
.end method
