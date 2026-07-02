.class public Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;
.super Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;
.source "NotecardBodyBookmarkViewForLavaMagazine.java"


# instance fields
.field protected final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final height:I

.field private krxDisposableObject:Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final res:Landroid/content/res/Resources;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V

    .line 34
    iput-object p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->res:Landroid/content/res/Resources;

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->isHighlightable:Z

    .line 38
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->notebook_bookmark_width_for_lava_magazine:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->width:I

    .line 39
    iget-object p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->res:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->notebook_bookmark_height_for_lava_magazine:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->height:I

    return-void
.end method


# virtual methods
.method public applyAnnotationNote(Lcom/amazon/kcp/reader/Note;Z)V
    .locals 2

    .line 55
    iget-object p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->getTargetCoords(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/notecard/TargetCoords;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->height:I

    iget v1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->width:I

    invoke-interface {p2, p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->krxDisposableObject:Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 59
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    const/16 v1, 0xf

    .line 64
    invoke-virtual {p2, v1, v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->notebook_thumbnail_background_lava_magazine:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected getTargetCoords(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/notecard/TargetCoords;
    .locals 3

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget v1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->width:I

    iget v2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->height:I

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 50
    :cond_0
    new-instance v2, Lcom/amazon/notebook/module/notecard/TargetCoords;

    invoke-direct {v2, p1, v1, v0}, Lcom/amazon/notebook/module/notecard/TargetCoords;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)V

    return-object v2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 74
    iget-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;->krxDisposableObject:Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->dispose()V

    :cond_0
    return-void
.end method
