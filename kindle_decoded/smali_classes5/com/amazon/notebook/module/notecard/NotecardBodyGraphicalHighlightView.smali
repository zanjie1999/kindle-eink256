.class public Lcom/amazon/notebook/module/notecard/NotecardBodyGraphicalHighlightView;
.super Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;
.source "NotecardBodyGraphicalHighlightView.java"


# instance fields
.field private final notebookGraphicMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->isHighlightable:Z

    .line 30
    iput p4, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyGraphicalHighlightView;->notebookGraphicMaxWidth:I

    return-void
.end method


# virtual methods
.method protected getTargetCoords(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/notecard/TargetCoords;
    .locals 4

    .line 35
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget v2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyGraphicalHighlightView;->notebookGraphicMaxWidth:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-interface {v1, v0, p1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPortraitSizeForGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    new-instance v2, Lcom/amazon/notebook/module/notecard/TargetCoords;

    invoke-direct {v2, v0, p1, v1}, Lcom/amazon/notebook/module/notecard/TargetCoords;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)V

    return-object v2
.end method
