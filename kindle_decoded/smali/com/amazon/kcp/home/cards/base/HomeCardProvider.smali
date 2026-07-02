.class public final Lcom/amazon/kcp/home/cards/base/HomeCardProvider;
.super Ljava/lang/Object;
.source "HomeCardProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/cards/base/HomeCardProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeCardProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCardProvider.kt\ncom/amazon/kcp/home/cards/base/HomeCardProvider\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n181#2,2:105\n1819#3,2:107\n*E\n*S KotlinDebug\n*F\n+ 1 HomeCardProvider.kt\ncom/amazon/kcp/home/cards/base/HomeCardProvider\n*L\n69#1,2:105\n76#1,2:107\n*E\n"
.end annotation


# static fields
.field public static cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/home/card/SidekickCardBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final homeFeedManager:Lcom/amazon/kcp/home/feeds/HomeFeedManager;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final updateCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/home/feeds/HomeFeedManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/home/feeds/HomeFeedManager;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "homeFeedManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->homeFeedManager:Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    iput-object p2, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->updateCallback:Lkotlin/jvm/functions/Function1;

    .line 32
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->builders:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->createCardBuilders()V

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Utils.getFactory().context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->build(Landroid/content/Context;)Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getBuilders$p(Lcom/amazon/kcp/home/cards/base/HomeCardProvider;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->builders:Ljava/util/Map;

    return-object p0
.end method

.method private final buildWidgets(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/card/HomeCard;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 56
    new-instance v0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;-><init>(Lcom/amazon/kcp/home/cards/base/HomeCardProvider;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final clearCards()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->builders:Ljava/util/Map;

    .line 105
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/card/SidekickCardBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/home/card/SidekickCardBuilder;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final createCardBuilders()V
    .locals 5

    .line 76
    const-class v0, Lcom/amazon/kindle/home/card/SidekickCardBuilder;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    const-string v1, "Discoveries.of(SidekickCardBuilder::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/card/SidekickCardBuilder;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add card builder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/home/card/SidekickCardBuilder;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v2

    const-string/jumbo v3, "sdk.weblabManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/home/card/SidekickCardBuilder;->isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added card builder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/home/card/SidekickCardBuilder;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kcp.home.cards.HomeCardProvider"

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->builders:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/home/card/SidekickCardBuilder;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "builder"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/card/HomeCard;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->homeFeedManager:Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    invoke-interface {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManager;->getHomeFeedData()Lcom/amazon/kcp/home/models/HomeFeed;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->getPageOfCards()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->cards:Ljava/util/List;

    .line 45
    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->getState()Lcom/amazon/kcp/home/models/HomeFeed$State;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-ne v1, p1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->clearCards()V

    const/4 p1, 0x0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->getPageOfCards()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->buildWidgets(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->builders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->createCardBuilders()V

    return-void
.end method

.method public final onHomeFeedUpdate(Lcom/amazon/kcp/home/events/HomeFeedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/amazon/kcp/home/events/HomeFeedEvent;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->updateCallback:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
