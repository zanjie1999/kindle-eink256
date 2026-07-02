.class public Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;
.super Ljava/lang/Object;
.source "PopularHighlightDecorationProvider.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentDecorationDataProvider;


# instance fields
.field private contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

.field private final krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private shouldShowText:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->shouldShowText:Z

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 47
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/renderingmodule/R$bool;->should_show_phl_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->shouldShowText:Z

    .line 48
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getPhlDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getRenderers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 87
    invoke-interface {v4}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v5, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v4, p1, p2, v5}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getContentDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 98
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    .line 99
    iget-object v6, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v6

    .line 100
    iget-object v7, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v7

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    .line 105
    iget-object v3, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    sget-object v8, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v3, v8}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v0

    .line 112
    :cond_3
    iget-boolean v8, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->shouldShowText:Z

    if-eqz v8, :cond_4

    .line 113
    new-instance v8, Lcom/amazon/krf/platform/ContentDecoration;

    new-instance v9, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v9, v6, v7}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    new-instance v6, Lcom/amazon/krf/platform/PopularHighlightContentDecorationPayload;

    check-cast v5, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;

    .line 115
    invoke-virtual {v5}, Lcom/amazon/kindle/krx/contentdecoration/LineDecoration;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/amazon/krf/platform/PopularHighlightContentDecorationPayload;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9, v3, v6}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;Lcom/amazon/krf/platform/ContentDecorationPayload;)V

    goto :goto_2

    .line 117
    :cond_4
    new-instance v8, Lcom/amazon/krf/platform/ContentDecoration;

    new-instance v5, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v5, v6, v7}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    invoke-direct {v8, v5, v3, v2}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;Lcom/amazon/krf/platform/ContentDecorationPayload;)V

    .line 121
    :goto_2
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "PopularHighlightDecorationProvider.getContentDecorations"

    .line 60
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v1

    sget-object v3, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 63
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result p2

    sget-object v1, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 64
    :cond_1
    new-instance p2, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 65
    new-instance v1, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 66
    invoke-direct {p0, p2, v1}, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->getPhlDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const/4 p1, 0x0

    .line 69
    invoke-static {v2, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    return-void
.end method

.method public updateAnnotations(Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;->getDecorationProvider()Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;->getDecorationProvider()Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne p1, v0, :cond_1

    .line 146
    iget-object p1, p0, Lcom/amazon/kindle/contentdecoration/PopularHighlightDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    invoke-interface {p1}, Lcom/amazon/krf/platform/ContentDecorationListener;->onDecorationsInvalidated()V

    :cond_1
    :goto_0
    return-void
.end method
