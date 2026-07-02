.class public final Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;
.super Ljava/lang/Object;
.source "HomeWidgetsFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeWidgetsFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeWidgetsFactory.kt\ncom/amazon/kcp/home/feeds/HomeWidgetsFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n1819#2,2:176\n*E\n*S KotlinDebug\n*F\n+ 1 HomeWidgetsFactory.kt\ncom/amazon/kcp/home/feeds/HomeWidgetsFactory\n*L\n41#1,2:176\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

.field private static final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/home/card/HomeCard;",
            ">;"
        }
    .end annotation
.end field

.field private static factoryInstance:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

.field private static final loadingSpinnerCard:Lcom/amazon/kindle/home/card/HomeCard;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;


# instance fields
.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/card/HomeCardBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final isFirstLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final sidekickProvider:Lcom/amazon/kcp/home/cards/base/HomeCardProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    .line 116
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-string v1, "home_widget_update"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->messageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    .line 121
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;->INSTANCE:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$comparator$1;

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->comparator:Ljava/util/Comparator;

    .line 133
    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$loadingSpinnerCard$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$loadingSpinnerCard$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->loadingSpinnerCard:Lcom/amazon/kindle/home/card/HomeCard;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/home/cards/base/HomeCardProvider;)V
    .locals 3

    const-string/jumbo v0, "sidekickProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->sidekickProvider:Lcom/amazon/kcp/home/cards/base/HomeCardProvider;

    .line 34
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->builders:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->isFirstLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_1

    .line 41
    const-class p1, Lcom/amazon/kindle/home/card/HomeCardBuilder;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    const-string v0, "Discoveries.of(HomeCardBuilder::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/home/card/HomeCardBuilder;

    .line 42
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    const-string/jumbo v2, "sdk.weblabManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/home/card/HomeCardBuilder;->isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->builders:Ljava/util/List;

    const-string v2, "builder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic access$getFactoryInstance$cp()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->factoryInstance:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    return-object v0
.end method

.method public static final synthetic access$getMessageQueue$cp()Lcom/amazon/kindle/krx/events/ITopicMessageQueue;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->messageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    return-object v0
.end method

.method public static final synthetic access$setFactoryInstance$cp(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->factoryInstance:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->getInstance()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final getLoadingSpinnerCard()Lcom/amazon/kindle/home/card/HomeCard;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->loadingSpinnerCard:Lcom/amazon/kindle/home/card/HomeCard;

    return-object v0
.end method


# virtual methods
.method public final getHomeWidgets(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    const-string v1, "authManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const-string v2, "HomeDisplayLatency"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->isFirstLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 60
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v5, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->sidekickProvider:Lcom/amazon/kcp/home/cards/base/HomeCardProvider;

    const-string v6, "context"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->build(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    .line 69
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v9, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->builders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kindle/home/card/HomeCardBuilder;

    .line 72
    invoke-interface {v10, p1}, Lcom/amazon/kindle/home/card/HomeCardBuilder;->build(Landroid/content/Context;)Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 73
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    :cond_4
    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v5, :cond_5

    .line 79
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/home/card/HomeCard;

    .line 87
    invoke-interface {v4}, Lcom/amazon/kindle/home/card/HomeCard;->getState()Lcom/amazon/kindle/home/card/HomeCardState;

    move-result-object v5

    .line 88
    sget-object v8, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne v8, v5, :cond_6

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Card should be ignored: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.amazon.kcp.home.feeds.HomeWidgetsFactory"

    invoke-static {v5, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 90
    :cond_6
    sget-object v8, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne v8, v5, :cond_7

    .line 91
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :cond_8
    if-nez v7, :cond_9

    .line 99
    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->loadingSpinnerCard:Lcom/amazon/kindle/home/card/HomeCard;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_9
    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->isFirstLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->loadingSpinnerCard:Lcom/amazon/kindle/home/card/HomeCard;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->isFirstLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    invoke-static {v2, v6}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 106
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_COLD_OPEN_HOME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "KindlePerformanceConstants.APP_COLD_OPEN_HOME"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 108
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "all widgets that are ready: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method
