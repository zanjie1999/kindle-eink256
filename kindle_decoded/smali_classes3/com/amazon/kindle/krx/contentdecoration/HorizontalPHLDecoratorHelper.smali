.class public Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;
.super Ljava/lang/Object;
.source "HorizontalPHLDecoratorHelper.java"


# instance fields
.field private cachedLineRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private dummyTextRect:Landroid/graphics/Rect;

.field private lineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

.field private numLineRects:I

.field private final paddingDashedLineDrop:I

.field private final paddingTextDrop:I

.field private final paddingTextRight:I

.field private shouldShowText:Z

.field private textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->line_decoration_horizontal_padding_text_drop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->paddingTextDrop:I

    .line 52
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->line_decoration_horizontal_padding_text_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->paddingTextRight:I

    .line 53
    sget v1, Lcom/amazon/kindle/krxsdk/R$dimen;->line_decoration_horizontal_padding_dashed_line_drop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->paddingDashedLineDrop:I

    .line 55
    iput-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    .line 56
    iput-object p3, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->lineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

    .line 58
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->cachedLineRects:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krxsdk/R$bool;->should_show_phl_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->shouldShowText:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/lang/String;ILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 102
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    .line 114
    iget-object v2, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->cachedLineRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    iget v3, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 115
    iget-object v3, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->cachedLineRects:Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    move-object/from16 v4, p2

    .line 119
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 120
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 125
    iget-boolean v7, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->shouldShowText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    if-nez v3, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 129
    iget-object v7, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    move-object/from16 v15, p3

    invoke-interface {v7, v15, v2, v9, v10}, Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 131
    iget-object v7, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 135
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v7, v9, :cond_2

    .line 137
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 140
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 144
    :goto_2
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->paddingTextDrop:I

    add-int/2addr v10, v11

    .line 145
    iget-object v11, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v6, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 147
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 148
    iget-object v13, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-static {v13, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 149
    iget-object v1, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 153
    :cond_4
    iget-object v11, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    int-to-float v14, v6

    int-to-float v10, v10

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v16, v14

    move/from16 v14, p4

    move/from16 v15, v16

    move/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IFF)V

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_7

    add-int/2addr v6, v7

    .line 160
    iget v7, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->paddingTextRight:I

    add-int/2addr v6, v7

    .line 161
    iget v7, v5, Landroid/graphics/Rect;->right:I

    .line 163
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->paddingDashedLineDrop:I

    add-int/2addr v5, v9

    .line 165
    iget-object v9, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->lineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v5

    move v13, v7

    move v14, v5

    move/from16 v15, p4

    invoke-interface/range {v9 .. v15}, Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;->drawLine(Landroid/graphics/Canvas;IIIII)V

    .line 168
    iget-object v9, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->cachedLineRects:Ljava/util/List;

    iget v10, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_6

    add-int/lit8 v10, v5, 0x1

    .line 170
    invoke-virtual {v9, v6, v5, v7, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    :cond_6
    iget v5, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method fetchCurrentLineRects(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->cachedLineRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget v1, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->cachedLineRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getCurrentTextRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method initForNewPage()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->numLineRects:I

    return-void
.end method
