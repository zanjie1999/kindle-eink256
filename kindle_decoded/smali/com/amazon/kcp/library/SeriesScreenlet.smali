.class public Lcom/amazon/kcp/library/SeriesScreenlet;
.super Lcom/amazon/kcp/library/GroupItemBaseScreenlet;
.source "SeriesScreenlet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/SeriesScreenlet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeriesScreenlet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeriesScreenlet.kt\ncom/amazon/kcp/library/SeriesScreenlet\n+ 2 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,79:1\n7#2:80\n*E\n*S KotlinDebug\n*F\n+ 1 SeriesScreenlet.kt\ncom/amazon/kcp/library/SeriesScreenlet\n*L\n61#1:80\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/library/SeriesScreenlet$Companion;


# instance fields
.field private final previousContext:Lcom/amazon/kcp/library/LibraryContext;

.field private final stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/SeriesScreenlet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/SeriesScreenlet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/SeriesScreenlet;->Companion:Lcom/amazon/kcp/library/SeriesScreenlet$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateManagerType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesScreenlet;->previousContext:Lcom/amazon/kcp/library/LibraryContext;

    iput-object p4, p0, Lcom/amazon/kcp/library/SeriesScreenlet;->stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    return-void
.end method

.method public static final newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 6

    sget-object v0, Lcom/amazon/kcp/library/SeriesScreenlet;->Companion:Lcom/amazon/kcp/library/SeriesScreenlet$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/library/SeriesScreenlet$Companion;->newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic createFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kcp/library/SeriesScreenlet;->createFragmentHandler()Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;

    move-result-object v0

    return-object v0
.end method

.method public createFragmentHandler()Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;
    .locals 8

    .line 63
    new-instance v6, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;

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

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Ljava/lang/String;)V

    return-object v6

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createLibraryContext(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/library/LibraryContext;
    .locals 10

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterStateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/amazon/kcp/library/LibraryContext;

    .line 52
    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesScreenlet;->previousContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryContext;->getInlineFilterGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v9, v1

    const-string v5, "Series"

    const-string v7, "SeriesItemsSortType"

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    .line 50
    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/library/LibraryContext;-><init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLibraryFilter(Ljava/lang/String;)Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 3

    const-class v0, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    const-string v1, "groupId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    .line 61
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterContext;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {v0, v2, p1}, Lcom/amazon/kcp/library/LibraryFilterContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/ILibraryFilterProvider;->provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object p1

    return-object p1

    .line 80
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

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesScreenlet;->stateManagerType:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->getLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    const-string v0, "LibraryFilterStateManage\u2026filter, stateManagerType)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;

    .line 67
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->setGroupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getSupportFragmentManager$LibraryModule_release()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "getSupportFragmentManager().beginTransaction()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->Companion:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;->getCONTAINER_ID()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getCurrentContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V

    .line 70
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.SeriesDetailFragmentHandler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
