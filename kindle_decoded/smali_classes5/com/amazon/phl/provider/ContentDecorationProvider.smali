.class public Lcom/amazon/phl/provider/ContentDecorationProvider;
.super Ljava/lang/Object;
.source "ContentDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# instance fields
.field private final phlDataManager:Lcom/amazon/phl/PopularHighlightsManager;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sdk cannot be null"

    .line 41
    invoke-static {p1, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "phlManager cannot be null"

    .line 42
    invoke-static {p2, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->phlDataManager:Lcom/amazon/phl/PopularHighlightsManager;

    .line 44
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    const-string/jumbo v0, "readerManager cannot be null"

    .line 45
    invoke-static {p2, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    const-string/jumbo v0, "readerUIManager cannot be null"

    .line 47
    invoke-static {p2, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->resources:Landroid/content/res/Resources;

    const-string/jumbo p2, "resources cannot be null"

    .line 49
    invoke-static {p1, p2}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private getDecorationColor()I
    .locals 2

    .line 94
    sget-object v0, Lcom/amazon/phl/provider/ContentDecorationProvider$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    iget-object v1, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/popularhighlights/R$color;->popularhighlights_decoration_color_white_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/popularhighlights/R$color;->popularhighlights_decoration_color_sepia_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/popularhighlights/R$color;->popularhighlights_decoration_color_black_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/phl/provider/ContentDecorationProvider;->get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const-string v1, "currentBookNavigator is null"

    .line 58
    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    const-string/jumbo v1, "positionFactory is null"

    .line 61
    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/amazon/phl/provider/ContentDecorationProvider;->getDecorationColor()I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->phlDataManager:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-virtual {v2, p1}, Lcom/amazon/phl/PopularHighlightsManager;->getPopularHighlightsInRange(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;

    move-result-object p1

    .line 66
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/phl/model/PopularHighlight;

    .line 68
    invoke-virtual {v2}, Lcom/amazon/phl/model/PopularHighlight;->getStartPosition()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    .line 69
    invoke-virtual {v2}, Lcom/amazon/phl/model/PopularHighlight;->getEndPosition()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 70
    iget-object v5, p0, Lcom/amazon/phl/provider/ContentDecorationProvider;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/kindle/popularhighlights/R$plurals;->popularhighlights_content_decoration_label:I

    .line 72
    invoke-virtual {v2}, Lcom/amazon/phl/model/PopularHighlight;->getNumHighlighters()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/amazon/phl/model/PopularHighlight;->getNumHighlighters()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v9

    .line 71
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 73
    new-instance v11, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;

    sget-object v6, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->Under:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    sget-object v7, Lcom/amazon/kindle/krx/contentdecoration/LineStyle;->dotted:Lcom/amazon/kindle/krx/contentdecoration/LineStyle;

    sget-object v9, Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;->BottomLeft:Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;

    move-object v2, v11

    move v5, v1

    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ILcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;Lcom/amazon/kindle/krx/contentdecoration/LineStyle;Ljava/lang/String;Lcom/amazon/kindle/krx/contentdecoration/DecorationAnchor;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v10
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/phl/provider/ContentDecorationProvider;->getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I

    move-result p1

    return p1
.end method
