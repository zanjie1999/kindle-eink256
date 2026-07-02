.class public final Lcom/amazon/kcp/home/actions/BookActionsActionProvider;
.super Ljava/lang/Object;
.source "BookActionsActionProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeActionProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookActionsActionProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookActionsActionProvider.kt\ncom/amazon/kcp/home/actions/BookActionsActionProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1819#2,2:94\n1819#2,2:96\n*E\n*S KotlinDebug\n*F\n+ 1 BookActionsActionProvider.kt\ncom/amazon/kcp/home/actions/BookActionsActionProvider\n*L\n46#1,2:94\n57#1,2:96\n*E\n"
.end annotation


# instance fields
.field private final actionKey:Ljava/lang/String;

.field private final metrics:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/discovery/RequiredUniqueDiscovery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsActionProvider;->metrics:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    const-string p1, "BOOK_ACTIONS"

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsActionProvider;->actionKey:Ljava/lang/String;

    return-void
.end method

.method private final finish(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-interface {p3, p1, p2, p4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Z
    .locals 7
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

    .line 34
    invoke-static {}, Lcom/amazon/kcp/home/util/HomeContext;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object v0

    const-string v1, "asin"

    .line 35
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "title"

    .line 36
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "reftag"

    .line 37
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "HomeBookActions"

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto :goto_3

    .line 44
    :cond_1
    new-instance v3, Lcom/amazon/kcp/home/actions/BookActionsBook;

    invoke-direct {v3, v1, v2}, Lcom/amazon/kcp/home/actions/BookActionsBook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    const-class v4, Lcom/amazon/kindle/home/action/HomeBookActionProvider;

    invoke-static {v4}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v4

    const-string v5, "Discoveries.of(HomeBookActionProvider::class.java)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/home/action/HomeBookActionProvider;

    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 49
    invoke-interface {v5, v6, v3}, Lcom/amazon/kindle/home/action/HomeBookActionProvider;->getAction(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/home/action/HomeBookAction;

    move-result-object v5

    .line 50
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_3
    new-instance v4, Lcom/amazon/kcp/home/actions/BookActionsPopup;

    iget-object v5, p0, Lcom/amazon/kcp/home/actions/BookActionsActionProvider;->metrics:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v5}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-direct {v4, v0, v5}, Lcom/amazon/kcp/home/actions/BookActionsPopup;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V

    .line 56
    invoke-virtual {v4, v2}, Lcom/amazon/kcp/home/actions/BookActionsPopup;->setTitle(Ljava/lang/String;)V

    .line 96
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/action/HomeBookAction;

    .line 58
    invoke-virtual {v4, v1, v3, p3}, Lcom/amazon/kcp/home/actions/BookActionsPopup;->addAction(Lcom/amazon/kindle/home/action/HomeBookAction;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v4, p1}, Lcom/amazon/kcp/home/actions/BookActionsPopup;->show(Landroid/view/View;)V

    .line 62
    sget-object p3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_SUCCESS:Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/amazon/kcp/home/actions/BookActionsActionProvider;->finish(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/action/ActionStatus;)V

    const/4 p1, 0x1

    return p1

    .line 40
    :cond_5
    :goto_3
    sget-object p3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/amazon/kcp/home/actions/BookActionsActionProvider;->finish(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/action/ActionStatus;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getActionKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsActionProvider;->actionKey:Ljava/lang/String;

    return-object v0
.end method
