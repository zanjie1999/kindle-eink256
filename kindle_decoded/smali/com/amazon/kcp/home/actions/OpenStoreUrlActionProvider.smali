.class public final Lcom/amazon/kcp/home/actions/OpenStoreUrlActionProvider;
.super Ljava/lang/Object;
.source "OpenStoreUrlActionProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeActionProvider;


# instance fields
.field private final actionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "STORE"

    .line 44
    iput-object v0, p0, Lcom/amazon/kcp/home/actions/OpenStoreUrlActionProvider;->actionKey:Ljava/lang/String;

    return-void
.end method

.method private final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 51
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "reftag"

    .line 52
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "template_id"

    .line 53
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    sget-object v4, Lcom/amazon/kcp/home/models/CardType;->FALKOR_DISCOVER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    const-string v4, "card_id"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string/jumbo v4, "unified-ebooks-home-ruby_FalkorFollowCard"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    xor-int/lit8 v4, p3, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_c

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz p3, :cond_3

    .line 68
    new-instance p3, Lcom/amazon/kcp/home/actions/FalkorStoreOpenerHandler;

    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/OpenStoreUrlActionProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-direct {p3, v3, v1}, Lcom/amazon/kcp/home/actions/FalkorStoreOpenerHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    goto :goto_3

    .line 69
    :cond_3
    sget-object p3, Lcom/amazon/kcp/home/models/CardType;->TIPS_AND_TRICKS:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p3}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    sget-object p3, Lcom/amazon/kcp/home/models/CardType;->WAYS_TO_READ:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p3}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    .line 72
    :cond_4
    new-instance p3, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;

    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/OpenStoreUrlActionProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-direct {p3, v3, v1}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    new-instance p3, Lcom/amazon/kcp/home/actions/HorizonStoreOpenerHandler;

    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/OpenStoreUrlActionProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-direct {p3, v3, v1}, Lcom/amazon/kcp/home/actions/HorizonStoreOpenerHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    .line 75
    :goto_3
    invoke-virtual {p3}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p3}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v3

    .line 77
    invoke-virtual {p3}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->getTitle()Ljava/lang/String;

    move-result-object p3

    .line 79
    const-class v8, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v8}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-eqz v8, :cond_a

    .line 80
    invoke-interface {v8, v0, v1, v4}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;Z)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    const-string v1, "it.createUrlOpener(context, url, forceNewTask)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 81
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_8

    .line 82
    invoke-interface {v0, v3}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    goto :goto_4

    .line 84
    :cond_8
    invoke-interface {v0, v3, p3}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    .line 86
    :goto_4
    invoke-interface {v0, v2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p3

    .line 87
    invoke-interface {p3}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    if-eqz p4, :cond_9

    .line 88
    invoke-interface {p4, p1, p2, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_9
    return v6

    :cond_a
    if-eqz p4, :cond_b

    .line 91
    invoke-interface {p4, p1, p2, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_b
    return v5

    .line 62
    :cond_c
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to open URL: url="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; reftag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.amazon.kcp.home.actions.OpenStoreUrlActionProvider"

    invoke-static {v0, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_d

    .line 63
    invoke-interface {p4, p1, p2, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_d
    return v5
.end method

.method public getActionKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/OpenStoreUrlActionProvider;->actionKey:Ljava/lang/String;

    return-object v0
.end method
