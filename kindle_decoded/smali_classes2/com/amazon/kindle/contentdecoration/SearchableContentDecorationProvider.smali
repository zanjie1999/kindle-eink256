.class public Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;
.super Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;
.source "SearchableContentDecorationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pausedDecorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->pausedDecorations:Ljava/util/List;

    .line 44
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getContentDecorationsInRange(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ge p2, p1, :cond_0

    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 188
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 190
    new-instance v2, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v2, p1, p2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 191
    sget-object p1, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p1

    .line 193
    invoke-virtual {p0, v2, p1}, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private getSearchResultContentDecorations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getSearchResults()Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, -0x1

    if-nez v1, :cond_2

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 157
    instance-of v4, v1, Lcom/amazon/kcp/search/ISearchResultWithPosition;

    if-eqz v4, :cond_0

    .line 158
    check-cast v1, Lcom/amazon/kcp/search/ISearchResultWithPosition;

    .line 159
    invoke-interface {v1}, Lcom/amazon/kcp/search/ISearchResultWithPosition;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    .line 160
    invoke-interface {v1}, Lcom/amazon/kcp/search/ISearchResultWithPosition;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-ge v4, v2, :cond_1

    move v2, v4

    :cond_1
    if-le v1, v3, :cond_0

    move v3, v1

    goto :goto_0

    .line 168
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->getContentDecorationsInRange(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider$1;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 137
    sget-object v0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid activity life cycle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->getSearchResultContentDecorations()Ljava/util/List;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->pausedDecorations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->pausedDecorations:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->postDecorationsUpdate(Ljava/util/List;Ljava/util/List;)V

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->pausedDecorations:Ljava/util/List;

    :cond_3
    :goto_0
    return-void
.end method

.method public onKRIFNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    if-eq v2, v3, :cond_6

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v4, v5, :cond_6

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    if-eq v4, v0, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getSearchResults()Ljava/util/List;

    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v5, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v5, :cond_5

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getNavigatingToSearchResultFlag()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v4, :cond_5

    .line 76
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7fffffff

    const/4 v5, 0x0

    .line 85
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 86
    instance-of v7, v6, Lcom/amazon/kcp/search/ISearchResultWithPosition;

    if-eqz v7, :cond_1

    .line 87
    check-cast v6, Lcom/amazon/kcp/search/ISearchResultWithPosition;

    .line 89
    invoke-interface {v6}, Lcom/amazon/kcp/search/ISearchResultWithPosition;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    .line 90
    invoke-interface {v6}, Lcom/amazon/kcp/search/ISearchResultWithPosition;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    if-gt v7, v2, :cond_2

    if-gt v1, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-ge v7, p1, :cond_3

    move p1, v7

    :cond_3
    if-le v6, v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    .line 105
    invoke-direct {p0}, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->getSearchResultContentDecorations()Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->refreshSearchResults()V

    .line 107
    invoke-direct {p0, p1, v3}, Lcom/amazon/kindle/contentdecoration/SearchableContentDecorationProvider;->getContentDecorationsInRange(II)Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->postDecorationsUpdate(Ljava/util/List;Ljava/util/List;)V

    .line 112
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->invalidateSearchResultFlag()V

    :cond_6
    :goto_1
    return-void
.end method
