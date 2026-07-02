.class public Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkImageView;
.super Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;
.source "NotecardBodyBookmarkImageView.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->isHighlightable:Z

    const/16 p1, 0x85

    .line 33
    iput p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkImageView;->width:I

    const/16 p1, 0x10a

    .line 34
    iput p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkImageView;->height:I

    return-void
.end method


# virtual methods
.method protected getTargetCoords(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/notecard/TargetCoords;
    .locals 4

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 44
    :cond_0
    iget v2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkImageView;->width:I

    iget v3, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkImageView;->height:I

    invoke-interface {v0, p1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 49
    :cond_1
    new-instance v2, Lcom/amazon/notebook/module/notecard/TargetCoords;

    invoke-direct {v2, p1, v1, v0}, Lcom/amazon/notebook/module/notecard/TargetCoords;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)V

    return-object v2
.end method
