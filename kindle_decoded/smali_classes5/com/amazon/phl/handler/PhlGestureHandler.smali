.class public Lcom/amazon/phl/handler/PhlGestureHandler;
.super Ljava/lang/Object;
.source "PhlGestureHandler.java"


# instance fields
.field private phlManager:Lcom/amazon/phl/PopularHighlightsManager;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 24
    iput-object p2, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/phl/handler/PhlGestureHandler;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/phl/handler/PhlGestureHandler;)Lcom/amazon/phl/PopularHighlightsManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    return-object p0
.end method


# virtual methods
.method public onContentDecorationEvent(Lcom/amazon/kindle/krx/events/ContentDecorationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->isBubbleAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getGestureType()Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;->Tap:Lcom/amazon/kindle/krx/events/GestureEvent$GestureType;

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/phl/PopularHighlightsManager;->getPopularHighlightSpanningPosition(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/phl/model/PopularHighlight;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/amazon/phl/handler/PhlGestureHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 41
    new-instance v2, Lcom/amazon/phl/handler/PhlGestureHandler$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/phl/handler/PhlGestureHandler$1;-><init>(Lcom/amazon/phl/handler/PhlGestureHandler;Lcom/amazon/kindle/krx/events/ContentDecorationEvent;Lcom/amazon/phl/model/PopularHighlight;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
