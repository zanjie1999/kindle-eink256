.class public Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;
.super Ljava/lang/Object;
.source "VerticalPHLDecoratorHelper.java"


# static fields
.field private static final TEXT_ROTATION:I = 0x5a


# instance fields
.field private final defaultShadowWidth:I

.field private dummyHighlightRect:Landroid/graphics/Rect;

.field private dummyTextRect:Landroid/graphics/Rect;

.field private highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

.field private textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 48
    sget v0, Lcom/amazon/kindle/krxsdk/R$dimen;->line_decoration_vertical_default_shadow_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->defaultShadowWidth:I

    .line 50
    iput-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    .line 51
    iput-object p3, p0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyHighlightRect:Landroid/graphics/Rect;

    return-void
.end method

.method private deepCloneRects(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 206
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getTextRect(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/util/List;Landroid/graphics/Rect;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 232
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 233
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 234
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 236
    iget-object v3, p0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, p2, v5, v4, p5}, Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 238
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 239
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez p3, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le v3, p3, :cond_1

    .line 245
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    .line 248
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/2addr p2, v0

    add-int/2addr v3, v2

    .line 251
    invoke-virtual {p5, v0, v2, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_4

    const/4 p1, 0x0

    .line 255
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 256
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-static {p2, p5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v5

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    return v1
.end method

.method private processRects(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->deepCloneRects(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 166
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 168
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 169
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 170
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 171
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v5, :cond_2

    .line 175
    iget v9, v2, Landroid/graphics/Rect;->left:I

    if-le v9, v7, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 184
    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 185
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 186
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 188
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 189
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 190
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 191
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 75
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p2

    .line 80
    invoke-direct {v6, v0}, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->processRects(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 84
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v5, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->getTextRect(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 87
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    const/4 v3, 0x1

    iget-object v5, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->getTextRect(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    const/4 v9, 0x0

    .line 95
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 96
    iget-object v2, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-static {v2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iget-object v0, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 107
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 108
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 109
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 110
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 111
    iget v3, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->defaultShadowWidth:I

    add-int/2addr v3, v1

    .line 112
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v8, v9, :cond_5

    .line 117
    iget-object v10, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    iget-object v4, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v14, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v15, v4

    const/high16 v16, 0x42b40000    # 90.0f

    move-object/from16 v11, p1

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-interface/range {v10 .. v16}, Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IFFF)V

    .line 119
    iget-object v4, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 120
    iget-object v4, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 121
    iget-object v4, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 124
    :cond_5
    iget-object v4, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyHighlightRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    iget-object v0, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    iget-object v1, v6, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyHighlightRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-interface {v0, v2, v1, v4, v3}, Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;->drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method getCurrentTextRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->dummyTextRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
