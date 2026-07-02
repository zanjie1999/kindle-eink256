.class public Lcom/amazon/kindle/krx/contentdecoration/HighlightDecorator;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;
.source "HighlightDecorator.java"


# instance fields
.field private highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecorator;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    return-void
.end method

.method private isHighlightDecoration(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Z
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Highlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public decorate(Ljava/util/Collection;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .locals 9
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

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    if-eqz p5, :cond_1

    .line 34
    invoke-interface {p5}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object p6

    invoke-direct {p0, p6}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecorator;->isHighlightDecoration(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Z

    move-result p6

    if-nez p6, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    move-object p6, p5

    check-cast p6, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;

    .line 38
    invoke-interface {p5}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 39
    invoke-interface {p5}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 41
    invoke-interface {p5}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getColor()I

    move-result p5

    .line 42
    invoke-virtual {p6}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;->hasBorder()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p6}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;->getBorderColor()I

    move-result p6

    goto :goto_1

    :cond_3
    const/4 p6, 0x0

    .line 43
    :goto_1
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v8

    .line 44
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1, p4}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;->createCoveringRectangles(IILcom/amazon/android/docviewer/IDocumentPage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/graphics/Rect;

    .line 48
    iget-object v2, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecorator;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    move-object v3, p2

    move v5, v8

    move v6, p5

    move v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;->drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZII)V

    goto :goto_2

    .line 52
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
