.class public final Lcom/amazon/kindle/setting/layout/MoreItemsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MoreItemsFragment.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoreItemsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoreItemsFragment.kt\ncom/amazon/kindle/setting/layout/MoreItemsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n1819#2:143\n1820#2:145\n1#3:144\n*E\n*S KotlinDebug\n*F\n+ 1 MoreItemsFragment.kt\ncom/amazon/kindle/setting/layout/MoreItemsFragment\n*L\n97#1:143\n97#1:145\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;


# instance fields
.field private menuContainer:Landroid/widget/LinearLayout;

.field private final updatableViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/setting/item/UpdatableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->Companion:Lcom/amazon/kindle/setting/layout/MoreItemsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->updatableViewMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getMenuContainer$p(Lcom/amazon/kindle/setting/layout/MoreItemsFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->menuContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "menuContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$populateViews(Lcom/amazon/kindle/setting/layout/MoreItemsFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->populateViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private final populateViews(Landroid/view/ViewGroup;)V
    .locals 10

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "ITEMS_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 95
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;->getInstance()Lcom/amazon/kindle/setting/item/ItemsRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/setting/item/ItemsRepository;->refresh()V

    if-eqz v0, :cond_6

    .line 143
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/amazon/kindle/setting/layout/ItemConfiguration;

    .line 98
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;->getInstance()Lcom/amazon/kindle/setting/item/ItemsRepository;

    move-result-object v2

    invoke-virtual {v6}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/setting/item/ItemsRepository;->findItemByID(Ljava/lang/String;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 99
    invoke-static {}, Lcom/amazon/kindle/setting/item/MoreItemUIBuilderRepository;->getInstance()Lcom/amazon/kindle/setting/item/ItemUIBuilderRepository;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/amazon/kindle/setting/item/ItemUIBuilderRepository;->findItemUIBuilderByItem(Lcom/amazon/kindle/setting/item/Item;)Lcom/amazon/kindle/setting/item/ItemUIBuilder;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v2, v5}, Lcom/amazon/kindle/setting/item/ItemUIBuilder;->build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_3

    :cond_3
    move-object v2, v1

    .line 104
    :goto_3
    instance-of v3, v2, Lcom/amazon/kindle/setting/item/UpdatableView;

    if-eqz v3, :cond_4

    .line 105
    iget-object v3, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->updatableViewMap:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/amazon/kindle/setting/item/Item;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    check-cast v8, Lcom/amazon/kindle/setting/item/UpdatableView;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_4
    invoke-virtual {v6}, Lcom/amazon/kindle/setting/layout/ItemConfiguration;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 110
    new-instance v9, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;

    move-object v3, v9

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$populateViews$$inlined$forEach$lambda$1;-><init>(Lcom/amazon/kindle/setting/item/ItemUIBuilder;Lcom/amazon/kindle/setting/item/Item;Lcom/amazon/kindle/setting/layout/ItemConfiguration;Lcom/amazon/kindle/setting/layout/MoreItemsFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private final refreshMenuItems()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->menuContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "menuContainer"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->menuContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->populateViews(Landroid/view/ViewGroup;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget p3, Lcom/amazon/kcp/more/R$layout;->items_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lcom/amazon/kcp/more/R$id;->items_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById<Linear\u2026ut>(R.id.items_container)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->menuContainer:Landroid/widget/LinearLayout;

    .line 42
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 43
    iget-object p2, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->menuContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->populateViews(Landroid/view/ViewGroup;)V

    .line 44
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->registerListener(Lcom/amazon/kindle/setting/item/ItemUpdateListener;)V

    return-object p1

    :cond_0
    const-string p1, "menuContainer"

    .line 43
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 66
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->deregisterListener(Lcom/amazon/kindle/setting/item/ItemUpdateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 51
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/DeregisterHandler;->setCurrentFragment(Landroidx/fragment/app/Fragment;)V

    .line 52
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->doPendingUpdate()V

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Lcom/amazon/kcp/debug/AaMenuUtils;->enableCache(Z)V

    .line 56
    invoke-direct {p0}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->refreshMenuItems()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    sget-object p1, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/DeregisterHandler;->setAfterSaveInstanceState(Z)V

    return-void
.end method

.method public final onSettingListRefreshEvent(Lcom/amazon/kindle/sdcard/SettingListRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$onSettingListRefreshEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/setting/layout/MoreItemsFragment$onSettingListRefreshEvent$1;-><init>(Lcom/amazon/kindle/setting/layout/MoreItemsFragment;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshItem(Lcom/amazon/kindle/setting/item/Item;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/setting/layout/MoreItemsFragment;->updatableViewMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/amazon/kindle/setting/item/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/setting/item/UpdatableView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/setting/item/UpdatableView;->onItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    :cond_0
    return-void
.end method
