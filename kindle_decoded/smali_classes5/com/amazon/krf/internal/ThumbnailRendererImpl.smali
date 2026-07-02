.class public Lcom/amazon/krf/internal/ThumbnailRendererImpl;
.super Ljava/lang/Object;
.source "ThumbnailRendererImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/ThumbnailRenderer;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private mBook:Lcom/amazon/krf/platform/KRFBook;

.field private mNativeThumbnailRenderer:J

.field private mPageCount:I

.field private mSettings:Lcom/amazon/krf/platform/ViewSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->CONFIG:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-static {}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->nativeInit()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;IJ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mBook:Lcom/amazon/krf/platform/KRFBook;

    .line 58
    iput-object p2, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 59
    iput p3, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mPageCount:I

    .line 60
    iput-wide p4, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mNativeThumbnailRenderer:J

    return-void
.end method

.method public static createThumbnailRendererImpl(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)Lcom/amazon/krf/platform/ThumbnailRenderer;
    .locals 7

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 49
    invoke-static {p0, p1, p2}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->createThumbnailRendererImplChecked(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 51
    new-instance v6, Lcom/amazon/krf/internal/ThumbnailRendererImpl;

    invoke-interface {p2}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageCount()I

    move-result v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;-><init>(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;IJ)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "neither provider nor settings can be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native createThumbnailRendererImplChecked(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)J
.end method

.method private static native deleteThumbnailRenderer(J)V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeOnTrimMemory(I)V
.end method

.method private native thumbnailImageAtPageChecked(III)Landroid/graphics/Bitmap;
.end method

.method private native thumbnailImageAtPagePercentChecked(IIF)Landroid/graphics/Bitmap;
.end method

.method private native thumbnailImageInRangeChecked(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;II)Landroid/graphics/Bitmap;
.end method


# virtual methods
.method public native applySettings(Lcom/amazon/krf/platform/ViewSettings;)V
.end method

.method public dispose()V
    .locals 5

    .line 85
    iget-wide v0, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mNativeThumbnailRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 86
    invoke-static {v0, v1}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->deleteThumbnailRenderer(J)V

    .line 87
    iput-wide v2, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mNativeThumbnailRenderer:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->dispose()V

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mBook:Lcom/amazon/krf/platform/KRFBook;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mPageCount:I

    return v0
.end method

.method public getSettings()Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mSettings:Lcom/amazon/krf/platform/ViewSettings;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5

    .line 75
    iget-wide v0, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mNativeThumbnailRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 76
    invoke-static {p1}, Lcom/amazon/krf/internal/MemoryUtils;->nativeWarningLevelFromAndroidWarningLevel(I)I

    move-result p1

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->nativeOnTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public native setWrapsContent(Z)V
.end method

.method public thumbnailImageAtPage(III)Landroid/graphics/Bitmap;
    .locals 5

    .line 123
    iget-wide v0, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mNativeThumbnailRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    if-ltz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->thumbnailImageAtPageChecked(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index must be positive and < page count"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "this method cannot be called after dispose()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnailImageAtPagePercent(IIF)Landroid/graphics/Bitmap;
    .locals 5

    .line 137
    iget-wide v0, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mNativeThumbnailRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-lez p2, :cond_1

    if-ltz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->thumbnailImageAtPagePercentChecked(IIF)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index must be positive and < page count"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "this method cannot be called after dispose()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnailImageInRange(Lcom/amazon/krf/platform/PositionRange;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 152
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 154
    iget-wide v1, p0, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->mNativeThumbnailRenderer:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 163
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/krf/internal/ThumbnailRendererImpl;->thumbnailImageInRangeChecked(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "range cannot contain null positions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "this method cannot be called after dispose()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native wrapsContent()Z
.end method
