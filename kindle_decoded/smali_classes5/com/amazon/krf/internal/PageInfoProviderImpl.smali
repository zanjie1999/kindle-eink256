.class public Lcom/amazon/krf/internal/PageInfoProviderImpl;
.super Ljava/lang/Object;
.source "PageInfoProviderImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/PageInfoProvider;


# instance fields
.field private mProviderPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 16
    invoke-static {}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->nativeInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/amazon/krf/internal/PageInfoProviderImpl;->mProviderPtr:J

    return-void
.end method

.method private static native createPageInfoProvider(Lcom/amazon/krf/platform/KRFBook;)J
.end method

.method private static native createPageInfoProvider(Lcom/amazon/krf/platform/KRFBook;I)J
.end method

.method static createPageInfoProviderImpl(Lcom/amazon/krf/platform/KRFBook;)Lcom/amazon/krf/internal/PageInfoProviderImpl;
    .locals 4

    if-eqz p0, :cond_1

    .line 37
    invoke-static {p0}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->createPageInfoProvider(Lcom/amazon/krf/platform/KRFBook;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 38
    new-instance p0, Lcom/amazon/krf/internal/PageInfoProviderImpl;

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/internal/PageInfoProviderImpl;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "book cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createPageInfoProviderImpl(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/internal/PageInfoProviderImpl;
    .locals 3

    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->createPageInfoProvider(Lcom/amazon/krf/platform/KRFBook;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 50
    new-instance v0, Lcom/amazon/krf/internal/PageInfoProviderImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/internal/PageInfoProviderImpl;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "book cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native deletePageInfoProvider(J)V
.end method

.method private native getPageInfoAtCheckedIndex(I)Lcom/amazon/krf/platform/PageInfo;
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 25
    iget-wide v0, p0, Lcom/amazon/krf/internal/PageInfoProviderImpl;->mProviderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->deletePageInfoProvider(J)V

    .line 27
    iput-wide v2, p0, Lcom/amazon/krf/internal/PageInfoProviderImpl;->mProviderPtr:J

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->dispose()V

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native getPageCount()I
.end method

.method public native getPageDimensionsAtCheckedIndex(I)J
.end method

.method public getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->getPageCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->getPageInfoAtCheckedIndex(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index must be positive and < page count"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native getPageInfoAt(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageInfo;
.end method

.method public native getPageInfoForLabel(Ljava/lang/String;)[Lcom/amazon/krf/platform/PageInfo;
.end method

.method public getPageRectAt(I)Landroid/graphics/Rect;
    .locals 4

    if-ltz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/PageInfoProviderImpl;->getPageDimensionsAtCheckedIndex(I)J

    move-result-wide v0

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int p1, v2

    long-to-int v1, v0

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index must be positive and < page count"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
