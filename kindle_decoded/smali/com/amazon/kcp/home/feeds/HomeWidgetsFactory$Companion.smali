.class public final Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;
.super Ljava/lang/Object;
.source "HomeWidgetsFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;-><init>()V

    return-void
.end method

.method public static synthetic notifyWidgetsChange$default(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange(Z)V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;
    .locals 5

    .line 154
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->access$getFactoryInstance$cp()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    new-instance v1, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;

    .line 156
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->getInstance()Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v4, "Utils.getFactory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    .line 158
    new-instance v4, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$getInstance$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion$getInstance$1;-><init>(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;)V

    .line 155
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;-><init>(Lcom/amazon/kcp/home/feeds/HomeFeedManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;-><init>(Lcom/amazon/kcp/home/cards/base/HomeCardProvider;)V

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->access$setFactoryInstance$cp(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->access$getFactoryInstance$cp()Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.home.feeds.HomeWidgetsFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final notifyWidgetsChange(Z)V
    .locals 2

    .line 170
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->access$getMessageQueue$cp()Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    return-void
.end method
