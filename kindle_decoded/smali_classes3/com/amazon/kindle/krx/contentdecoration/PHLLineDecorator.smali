.class public Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;
.source "PHLLineDecorator.java"


# static fields
.field private static final RENDERING_PRIORITY:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private drawnContentDecorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private drawnTextRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

.field private horizontalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

.field private lineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

.field private textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

.field private verticalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorator;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnTextRects:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnContentDecorations:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    .line 54
    iput-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->lineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

    .line 55
    iput-object p3, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    return-void
.end method

.method private getShadow(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I
    .locals 1

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 169
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 176
    sget p2, Lcom/amazon/kindle/krxsdk/R$color;->white_mode_line_decoration_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 174
    :cond_0
    sget p2, Lcom/amazon/kindle/krxsdk/R$color;->sepia_mode_line_decoration_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 172
    :cond_1
    sget p2, Lcom/amazon/kindle/krxsdk/R$color;->black_mode_line_decoration_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private initHorizontalPHL(Landroid/content/Context;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->horizontalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    iget-object v2, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->lineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->horizontalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->horizontalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->initForNewPage()V

    return-void
.end method

.method private initVerticalPHL(Landroid/content/Context;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->verticalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;

    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    iget-object v2, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->verticalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public decorate(Ljava/util/Collection;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .locals 16
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

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 62
    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->TAG:Ljava/lang/String;

    const-string v2, "decoration is null!"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    iget-object v1, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnTextRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 67
    iget-object v1, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnContentDecorations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 68
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-interface/range {p3 .. p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->initHorizontalPHL(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->initVerticalPHL(Landroid/content/Context;)V

    .line 76
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    if-nez v4, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v5

    .line 82
    sget-object v6, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-eq v5, v6, :cond_3

    .line 83
    sget-object v4, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expecting decoration.style = DecorationStyle.Text but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_3
    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getColor()I

    move-result v12

    .line 88
    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    move-object/from16 v15, p4

    invoke-interface {v15, v5, v6}, Lcom/amazon/android/docviewer/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object v8

    .line 89
    move-object v5, v4

    check-cast v5, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;

    invoke-virtual {v5}, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->getText()Ljava/lang/String;

    move-result-object v11

    .line 90
    invoke-virtual {v5}, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->getTextRect()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v2, :cond_4

    .line 93
    iget-object v6, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->horizontalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

    move-object/from16 v7, p2

    move-object v9, v11

    move v10, v12

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/lang/String;ILjava/util/List;)V

    .line 94
    iget-object v6, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->horizontalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

    invoke-virtual {v6, v5}, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->getCurrentTextRect(Landroid/graphics/Rect;)V

    .line 95
    iget-object v6, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->horizontalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;

    iget-object v7, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnTextRects:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/krx/contentdecoration/HorizontalPHLDecoratorHelper;->fetchCurrentLineRects(Ljava/util/Collection;)V

    goto :goto_2

    .line 99
    :cond_4
    invoke-interface/range {p3 .. p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->getShadow(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)I

    move-result v13

    .line 101
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v14

    .line 102
    invoke-interface/range {p4 .. p4}, Lcom/amazon/android/docviewer/IDocumentPage;->getDecorativeRectangles()Ljava/util/Vector;

    move-result-object v9

    .line 104
    iget-object v6, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->verticalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;

    move-object/from16 v7, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v6 .. v14}, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIZ)V

    .line 105
    iget-object v6, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->verticalPHLHelper:Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;

    invoke-virtual {v6, v5}, Lcom/amazon/kindle/krx/contentdecoration/VerticalPHLDecoratorHelper;->getCurrentTextRect(Landroid/graphics/Rect;)V

    .line 109
    :goto_2
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v7, :cond_5

    .line 110
    iget-object v6, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnTextRects:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_5
    iget-object v5, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnContentDecorations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 116
    :cond_6
    iget-object v1, v0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnTextRects:Ljava/util/List;

    return-object v1
.end method

.method public getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;
    .locals 3

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getPositionRange(IIZ)Lcom/amazon/kindle/krx/reader/IPositionRange;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 126
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;->drawnContentDecorations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    .line 129
    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    return-object v0

    :cond_4
    return-object v1
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
