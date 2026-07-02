.class public Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;
.super Ljava/lang/Object;
.source "WordWiseContentDecorationProvider.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentDecorationDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

.field private final decorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private final krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->decorations:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private createWordWiseDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 9

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->decorations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    invoke-static {}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getRenderers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 87
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 88
    invoke-interface {v2}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    const-string v4, "WordWiseContentDecorationProvider(KRX).getContentDecorations"

    .line 93
    invoke-static {v4, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 94
    iget-object v3, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v2, p1, p2, v3}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getContentDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    .line 95
    invoke-static {v4, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-eqz v2, :cond_1

    .line 98
    iget-object v3, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    .line 104
    iget-object v5, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v5

    .line 108
    invoke-interface {v4}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 109
    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 113
    :cond_5
    iget-object v7, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iget v6, v6, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    invoke-virtual {v7, v6}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v6

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 115
    instance-of v7, v4, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;

    if-eqz v7, :cond_4

    if-nez v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->krifDocViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    sget-object v7, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->WORDWISE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v1, v7}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    .line 124
    :cond_6
    check-cast v4, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;

    .line 125
    new-instance v7, Lcom/amazon/krf/platform/ContentDecoration;

    new-instance v8, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v8, v5, v6}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    new-instance v5, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;

    .line 127
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->getGlossText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecoration;->isLowConfidence()Z

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v7, v8, v1, v5}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;Lcom/amazon/krf/platform/ContentDecorationPayload;)V

    .line 129
    iget-object v4, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->decorations:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_7
    invoke-interface {v3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 3
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

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "WordWiseContentDecorationProvider.getContentDecorations"

    .line 57
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->decorations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v0

    sget-object v2, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->WORDWISE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 61
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result p2

    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 62
    :cond_1
    new-instance p2, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 63
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFTextPosition;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kindle/rendering/KRIFTextPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    .line 64
    invoke-direct {p0, p2, v0}, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->createWordWiseDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_2
    const/4 p1, 0x0

    .line 67
    invoke-static {v1, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 69
    iget-object p1, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->decorations:Ljava/util/List;

    return-object p1

    .line 54
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    return-void
.end method

.method public updateDecorations(Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;->getDecorationProvider()Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFRefreshContentDecorationProviderEvent;->getDecorationProvider()Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->WordWise:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne p1, v0, :cond_1

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/contentdecoration/WordWiseContentDecorationProvider;->contentDecorationListener:Lcom/amazon/krf/platform/ContentDecorationListener;

    invoke-interface {p1}, Lcom/amazon/krf/platform/ContentDecorationListener;->onDecorationsInvalidated()V

    :cond_1
    :goto_0
    return-void
.end method
