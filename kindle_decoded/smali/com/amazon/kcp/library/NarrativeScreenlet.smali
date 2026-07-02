.class public Lcom/amazon/kcp/library/NarrativeScreenlet;
.super Lcom/amazon/kcp/library/GroupItemBaseScreenlet;
.source "NarrativeScreenlet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/NarrativeScreenlet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNarrativeScreenlet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NarrativeScreenlet.kt\ncom/amazon/kcp/library/NarrativeScreenlet\n+ 2 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,102:1\n7#2:103\n*E\n*S KotlinDebug\n*F\n+ 1 NarrativeScreenlet.kt\ncom/amazon/kcp/library/NarrativeScreenlet\n*L\n82#1:103\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/library/NarrativeScreenlet$Companion;


# instance fields
.field private final stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/NarrativeScreenlet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/NarrativeScreenlet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/NarrativeScreenlet;->Companion:Lcom/amazon/kcp/library/NarrativeScreenlet$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateManagerType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V

    iput-object p4, p0, Lcom/amazon/kcp/library/NarrativeScreenlet;->stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    return-void
.end method


# virtual methods
.method public bridge synthetic createFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kcp/library/NarrativeScreenlet;->createFragmentHandler()Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;

    move-result-object v0

    return-object v0
.end method

.method public createFragmentHandler()Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;
    .locals 8

    .line 84
    new-instance v6, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getListener()Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getLibraryFragmentClient()Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v0, "context.tag"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Ljava/lang/String;)V

    return-object v6

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createLibraryContext(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/library/LibraryContext;
    .locals 12

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterStateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/amazon/kcp/library/LibraryContext;

    .line 74
    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 76
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v5, "Narrative"

    const-string v7, "SeriesItemsSortType"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    .line 72
    invoke-direct/range {v1 .. v11}, Lcom/amazon/kcp/library/LibraryContext;-><init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public createLibraryFilter(Ljava/lang/String;)Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 3

    const-class v0, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    const-string v1, "groupId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    .line 82
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterContext;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {v0, v2, p1}, Lcom/amazon/kcp/library/LibraryFilterContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/ILibraryFilterProvider;->provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must implement discoverable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;)Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeScreenlet;->stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->getLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    const-string v0, "LibraryFilterStateManage\u2026filter, stateManagerType)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget v0, Lcom/amazon/kcp/largelibraryimplementation/R$layout;->narrative_library_screenlet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getScreenContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    sget v1, Lcom/amazon/kcp/largelibraryimplementation/R$id;->pull_to_refresh_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-class v2, Lcom/amazon/kcp/library/NarrativeScreenlet;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v3, Lcom/amazon/kcp/library/NarrativeScreenlet$onCreate$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/NarrativeScreenlet$onCreate$1;-><init>(Lcom/amazon/kcp/library/NarrativeScreenlet;)V

    .line 56
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/amazon/kcp/library/SwipeRefreshHelper;-><init>(Landroid/content/Context;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ljava/lang/String;Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->setSwipeRefreshHelper(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V

    .line 63
    invoke-static {}, Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher;->getLibraryViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-result-object p2

    const-string v0, "LibraryViewOptionsModelF\u2026LibraryViewOptionsModel()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->setViewOptionsModel(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V

    const-string/jumbo p2, "rootView"

    .line 64
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->setGroupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 91
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "activity.supportFragmentManager.beginTransaction()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->Companion:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;->getCONTAINER_ID()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getCurrentContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V

    .line 93
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.NarrativeDetailFragmentHandler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
