.class public Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;
.source "AmplifyHighlightDecorator.java"


# instance fields
.field private amplifyHighlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;->amplifyHighlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;

    return-void
.end method

.method private getBlockingRectangles(Ljava/util/List;Landroid/graphics/Rect;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p3}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;->getHorizontalMargin(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result p3

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 128
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 129
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 136
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, p3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, p3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p1, v4, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private getHorizontalMargin(Lcom/amazon/android/docviewer/KindleDocViewer;)I
    .locals 2

    .line 66
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    .line 67
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v1

    .line 68
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColumnCount()I

    move-result p1

    .line 70
    invoke-virtual {v1, v0, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result p1

    return p1
.end method

.method private isAmplifyHighlightDecoration(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Z
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->AmplifyHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private mergeRectangles(Ljava/util/List;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 84
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    float-to-double v0, v0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 86
    invoke-direct {p0, p2}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;->getHorizontalMargin(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result p2

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    .line 96
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 97
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget p1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 102
    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 103
    iget p1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 104
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1

    .line 109
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method


# virtual methods
.method public decorate(Ljava/util/Collection;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Lcom/amazon/android/docviewer/IDocumentPage;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;->isAmplifyHighlightDecoration(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 40
    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 42
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {p0, v1, v0, p4}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;->createCoveringRectangles(IILcom/amazon/android/docviewer/IDocumentPage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-direct {p0, v0, p3, p5}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;->mergeRectangles(Ljava/util/List;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 45
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_3
    invoke-direct {p0, p6, p5, p3}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;->getBlockingRectangles(Ljava/util/List;Landroid/graphics/Rect;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 52
    iget-object p5, p0, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;->amplifyHighlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;

    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p6

    invoke-virtual {p6}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p6

    invoke-virtual {p5, p2, p4, p6}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;->drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 54
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
