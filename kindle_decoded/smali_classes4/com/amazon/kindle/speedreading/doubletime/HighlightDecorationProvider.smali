.class public Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;
.super Ljava/lang/Object;
.source "HighlightDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# instance fields
.field private final controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private mobiHighlightColor:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private wordCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/speedreading/doubletime/framework/Word;",
            ">;"
        }
    .end annotation
.end field

.field private yjHighlightColor:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#aa575757"

    .line 27
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->yjHighlightColor:I

    const-string v0, "#ffcccccc"

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->mobiHighlightColor:I

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->wordCache:Ljava/util/HashMap;

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getWordProvider()Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 86
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 90
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    if-ne v1, v2, :cond_0

    .line 95
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->yjHighlightColor:I

    goto :goto_0

    .line 99
    :cond_0
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->mobiHighlightColor:I

    :goto_0
    move v5, v1

    .line 105
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getWordProvider()Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getWordAtPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v2

    .line 109
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getLooper()Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getLooper()Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getLooper()Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 114
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-virtual {v3, v6, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v2, v3

    move-object v1, v4

    :cond_1
    if-eqz v2, :cond_4

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->wordCache:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->wordCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x2

    if-le p1, v1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->wordCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->wordCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->wordCache:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 140
    :goto_1
    new-instance p1, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    const v6, -0x777778

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIZ)V

    .line 141
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I
    .locals 0

    const/16 p1, 0xa

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I

    move-result p1

    return p1
.end method

.method public updateColors(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_highlight_yj:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->yjHighlightColor:I

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_highlight_mobi:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->mobiHighlightColor:I

    goto :goto_1

    .line 52
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_highlight_yj:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->yjHighlightColor:I

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_highlight_mobi:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->mobiHighlightColor:I

    goto :goto_1

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_highlight_yj:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->yjHighlightColor:I

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_highlight_mobi:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->mobiHighlightColor:I

    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_highlight_yj:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->yjHighlightColor:I

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_highlight_mobi:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;->mobiHighlightColor:I

    :goto_1
    return-void
.end method
