.class public Lcom/amazon/kcp/library/models/internal/MOPBookItem;
.super Lcom/amazon/kcp/library/models/internal/KRFBookItem;
.source "MOPBookItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/library/models/internal/MOPBookItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/MOPBookItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p12}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;-><init>(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    return-void
.end method


# virtual methods
.method protected getAmznUserLocationFromPosition(I)I
    .locals 0

    return p1
.end method

.method public getLastPositionRead()I
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getLastPositionRead()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 103
    invoke-static {v1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1

    .line 125
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;-><init>()V

    return-object v0
.end method

.method public isFixedLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTextbook()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected populateSupportedFeatureSet()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->populateSupportedFeatureSet()V

    .line 71
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->StaticPagination:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 72
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->DisableLocationNavigation:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 73
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$bool;->enable_thumbnail_scrubber_for_mop_and_pdf:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 75
    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v2, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 76
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 77
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 78
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    return-void
.end method

.method protected recalculateReadingProgress()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/MOPBookItem;->getLastPositionRead()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookFurthestPosition()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    :goto_1
    return-void
.end method

.method protected setBookFurthestPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V
    .locals 0

    return-void
.end method

.method protected setBookStartingPositionFromDocument(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V
    .locals 0

    return-void
.end method
