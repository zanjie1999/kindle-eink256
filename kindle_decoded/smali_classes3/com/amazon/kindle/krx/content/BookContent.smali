.class public Lcom/amazon/kindle/krx/content/BookContent;
.super Lcom/amazon/kindle/krx/content/BaseBookContent;
.source "BookContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/content/BaseBookContent<",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        ">;"
    }
.end annotation


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BaseBookContent;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context or docViewer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static convertScalingOptions(Lcom/amazon/kindle/krx/content/images/ImageScaling;)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 188
    :cond_0
    sget-object v1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    .line 189
    sget-object v2, Lcom/amazon/kindle/krx/content/BookContent$1;->$SwitchMap$com$amazon$kindle$krx$content$images$ImageScaling$ScalingPolicy:[I

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->policy:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    sget-object v1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->Fit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    goto :goto_0

    .line 191
    :cond_2
    sget-object v1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->imageSize:Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;

    if-nez v2, :cond_3

    goto :goto_1

    .line 203
    :cond_3
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, v2, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->width:I

    iget v2, v2, Lcom/amazon/kindle/krx/content/images/ImageScaling$Dimension;->height:I

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 206
    :goto_1
    iget p0, p0, Lcom/amazon/kindle/krx/content/images/ImageScaling;->sampleSizeRoundingFactor:F

    .line 207
    new-instance v2, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    invoke-direct {v2, v1, v0, p0}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;-><init>(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;Lcom/amazon/kindle/util/drawing/Dimension;F)V

    return-object v2
.end method

.method private getDocument()Lcom/amazon/android/docviewer/KindleDoc;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDocumentPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCoveringRectangle(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/content/BookContent;->verifyPositionRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocumentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 151
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 150
    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 153
    new-instance p2, Ljava/util/ArrayList;

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 156
    new-instance v1, Lcom/amazon/kindle/krx/reader/Rectangle;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazon/kindle/krx/reader/Rectangle;-><init>(IIII)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2

    .line 162
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getElement(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)Lcom/amazon/kindle/krx/content/IBookElement;
    .locals 2

    if-eqz p1, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p2}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertBookElementType(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getElementsOnCurrentPage(I)Ljava/util/Vector;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 118
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 120
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IPageElement;

    .line 121
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 123
    invoke-static {v0}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertPageElement(Lcom/amazon/android/docviewer/IPageElement;)Lcom/amazon/kindle/krx/content/IBookElement;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElements(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBookElement;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/content/BookContent;->verifyPositionRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {p3}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertBookElementType(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 87
    invoke-interface {v0, p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getElementsOnCurrentPage(I)Ljava/util/Vector;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 89
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 90
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 91
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {p3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IPageElement;

    .line 94
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v2

    .line 95
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v3

    if-lt v2, p1, :cond_0

    if-gt v2, p2, :cond_0

    if-lt v3, p1, :cond_0

    if-gt v3, p2, :cond_0

    .line 101
    invoke-static {v1}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertPageElement(Lcom/amazon/android/docviewer/IPageElement;)Lcom/amazon/kindle/krx/content/IBookElement;

    move-result-object v1

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 108
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageFromImageId(Ljava/lang/String;Lcom/amazon/kindle/krx/content/images/ImageScaling;)Landroid/graphics/Bitmap;
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDoc;->getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    invoke-static {p2}, Lcom/amazon/kindle/krx/content/BookContent;->convertScalingOptions(Lcom/amazon/kindle/krx/content/images/ImageScaling;)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ImageProvider;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ImageProvider;->close()V

    .line 74
    throw p2

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public getLocationFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPageIndexFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageIndexForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getPageThumbnail(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageThumbnail(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    move-result-object p1

    return-object p1
.end method

.method public getWords(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/content/BookContent;->verifyPositionRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 55
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 54
    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/KindleDoc;->getTextBetweenPositions(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getWordsAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;II)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 244
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, " "

    if-ge v3, p3, :cond_4

    .line 249
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 250
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 252
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_6

    .line 257
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 258
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 260
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p3, p3, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v3, v2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 263
    :cond_6
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWordsAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)[Ljava/lang/String;
    .locals 8

    .line 269
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/BookContent;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/content/BookContent;->verifyPositionRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    iget-object v3, p0, Lcom/amazon/kindle/krx/content/BookContent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 281
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {v3, v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 283
    :cond_2
    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v1

    const-string v4, " "

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 288
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 p4, p4, -0x1

    if-lez p4, :cond_4

    .line 292
    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    :goto_0
    const/4 v2, 0x0

    if-lez p3, :cond_7

    .line 298
    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 299
    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 301
    iget-object v6, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 302
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 303
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_5
    invoke-virtual {v1, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 309
    :cond_7
    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 313
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/KindleDoc;->getTextBetweenPositions(II)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    aput-object p3, p2, v2

    aput-object p4, p2, v5

    const/4 p3, 0x2

    aput-object p1, p2, p3

    return-object p2

    :cond_8
    :goto_1
    return-object v1
.end method

.method verifyPositionRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 226
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
