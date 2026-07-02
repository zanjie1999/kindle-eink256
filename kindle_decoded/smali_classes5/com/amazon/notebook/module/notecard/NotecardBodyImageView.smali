.class public abstract Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;
.super Lcom/amazon/notebook/module/notecard/NotecardBodyView;
.source "NotecardBodyImageView.java"


# instance fields
.field protected final asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

.field protected final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field protected imageLoadingSpinner:Landroid/view/View;

.field protected selectionImage:Landroid/widget/ImageView;

.field protected selectionImageWrapper:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    iput-object p3, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    return-void
.end method

.method private inflateFailsafeTextMessage(Lcom/amazon/kcp/reader/Note;Z)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->getUserTextOrBookText(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->inflateTextView(Ljava/lang/String;Z)V

    return-void
.end method

.method private resizeView(Landroid/view/View;Landroid/view/View;II)V
    .locals 2

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p3, v1

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    add-int/2addr p4, p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p4, p3

    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateImageView(Lcom/amazon/notebook/module/notecard/TargetCoords;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;)V
    .locals 9

    .line 84
    iget-object v0, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->targetSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->targetSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, p3, p2, v0, v1}, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->resizeView(Landroid/view/View;Landroid/view/View;II)V

    .line 87
    iget-object v4, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v4, :cond_0

    .line 88
    iget-object v2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    iget-object v3, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v0, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->targetSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object p1, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->targetSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v7, p2

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->requestGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/widget/ImageView;Landroid/view/View;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    iget-object v1, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v2, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->targetSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object p1, p1, Lcom/amazon/notebook/module/notecard/TargetCoords;->targetSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->requestGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/widget/ImageView;Landroid/view/View;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 93
    :goto_0
    sget p4, Lcom/amazon/notebook/module/R$id;->notebook_image_fetching_task:I

    invoke-virtual {p2, p4, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public applyAnnotationNote(Lcom/amazon/kcp/reader/Note;Z)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/notebook/module/R$layout;->notecard_module_selection_image_frame:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Lcom/amazon/notebook/module/R$id;->annotation_module_selection_image_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->selectionImageWrapper:Landroid/widget/FrameLayout;

    .line 45
    sget v0, Lcom/amazon/notebook/module/R$id;->annotation_module_selection_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->selectionImage:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/amazon/notebook/module/R$id;->annotation_module_image_loading_spinner:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->imageLoadingSpinner:Landroid/view/View;

    .line 48
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->getTargetCoords(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/notecard/TargetCoords;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->selectionImageWrapper:Landroid/widget/FrameLayout;

    .line 54
    iput-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->selectionImage:Landroid/widget/ImageView;

    .line 55
    iput-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->imageLoadingSpinner:Landroid/view/View;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->inflateFailsafeTextMessage(Lcom/amazon/kcp/reader/Note;Z)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->selectionImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->selectionImageWrapper:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->imageLoadingSpinner:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/amazon/notebook/module/notecard/NotecardBodyImageView;->updateImageView(Lcom/amazon/notebook/module/notecard/TargetCoords;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected abstract getTargetCoords(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/notecard/TargetCoords;
.end method
