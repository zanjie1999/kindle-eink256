.class abstract Lcom/amazon/android/docviewer/mobi/MobiPageElement;
.super Ljava/lang/Object;
.source "MobiPageElement.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPageElement;


# instance fields
.field private coveringRectangles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field private endId:I

.field private startId:I


# direct methods
.method protected constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->startId:I

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getEndId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->endId:I

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->generateCoveringRectangles(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;Landroid/view/ViewGroup$MarginLayoutParams;)Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->coveringRectangles:Ljava/util/Vector;

    return-void
.end method

.method static create(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)Lcom/amazon/android/docviewer/mobi/MobiPageElement;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/amazon/android/docviewer/mobi/GenericMobiPageElement;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/GenericMobiPageElement;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiImagePageElement;

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->interpretAsIImagePageElement()Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiImagePageElement;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;)V

    return-object v0

    .line 24
    :cond_1
    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->interpretAsIWordPageElement()Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;)V

    return-object v0
.end method

.method private generateCoveringRectangles(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;Landroid/view/ViewGroup$MarginLayoutParams;)Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->getCoveringRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getCount()J

    move-result-wide v0

    long-to-int v1, v0

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    int-to-long v3, v2

    .line 55
    invoke-virtual {p1, v3, v4}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v3

    .line 56
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_x()I

    move-result v5

    iget v6, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_y()I

    move-result v6

    iget v7, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    .line 57
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_width()I

    move-result v7

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_height()I

    move-result v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 56
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->coveringRectangles:Ljava/util/Vector;

    return-object v0
.end method

.method public getEndId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->endId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->startId:I

    return v0
.end method
