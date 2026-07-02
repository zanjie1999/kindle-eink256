.class public abstract Lcom/amazon/kcp/library/GroupItemBaseScreenlet;
.super Lcom/amazon/kindle/krx/ui/BaseScreenlet;
.source "GroupItemBaseScreenlet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;
    }
.end annotation


# static fields
.field private static final CONTAINER_ID:I

.field public static final Companion:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;


# instance fields
.field private final callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

.field protected currentContext:Lcom/amazon/kcp/library/LibraryContext;

.field private filterChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

.field private filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field protected fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private isActivated:Z

.field private isStarted:Z

.field private final libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;

.field private libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

.field private final listener:Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

.field private final markAsReadHiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

.field private final previousContext:Lcom/amazon/kcp/library/LibraryContext;

.field private final screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

.field private swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

.field private title:Ljava/lang/String;

.field private final viewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

.field public viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->Companion:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$Companion;

    .line 22
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->library_view_root:I

    sput v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->CONTAINER_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)V
    .locals 1

    const-string/jumbo v0, "screenContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    iput-object p2, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->previousContext:Lcom/amazon/kcp/library/LibraryContext;

    iput-object p3, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->title:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->Companion:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;->getInstance()Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->markAsReadHiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    .line 39
    sget-object p1, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;->INSTANCE:Lcom/amazon/kcp/library/GroupItemBaseScreenlet$viewChangedListener$1;

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->viewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

    .line 41
    new-instance p1, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$libraryFragmentClient$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$libraryFragmentClient$1;-><init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;

    .line 53
    new-instance p1, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$listener$1;-><init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->listener:Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

    return-void
.end method

.method public static final synthetic access$getCONTAINER_ID$cp()I
    .locals 1

    .line 17
    sget v0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->CONTAINER_ID:I

    return v0
.end method


# virtual methods
.method public final createAndShowSecondaryMenu$LibraryModule_release(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 5

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->secondary_menu_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "screenContext.activity.f\u2026secondary_menu_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->secondary_menu_divider:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "screenContext.activity.f\u2026d.secondary_menu_divider)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v2, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    iget-object v3, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-result-object v4

    .line 126
    invoke-direct {v2, v3, v0, v4, v1}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Landroid/view/View;)V

    iput-object v2, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    if-eqz v2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->viewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

    .line 128
    invoke-virtual {v2, v0, p1, v1, p2}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->setupLibraryMenuOptionsToolbar(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/LibraryContext;)V

    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract createFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
.end method

.method public abstract createLibraryContext(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/library/LibraryContext;
.end method

.method public abstract createLibraryFilter(Ljava/lang/String;)Lcom/amazon/kcp/library/ILibraryFilter;
.end method

.method public abstract createLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;)Lcom/amazon/kcp/library/LibraryFilterStateManager;
.end method

.method public final getCallback()Lcom/amazon/kcp/library/LibraryContextChangedCallback;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->callback:Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    return-object v0
.end method

.method protected final getCurrentContext()Lcom/amazon/kcp/library/LibraryContext;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->currentContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "currentContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fragmentHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getHeaderMode()Lcom/amazon/kindle/krx/ui/HeaderMode;
    .locals 1

    .line 137
    sget-object v0, Lcom/amazon/kindle/krx/ui/HeaderMode;->TITLE:Lcom/amazon/kindle/krx/ui/HeaderMode;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryFragmentClient()Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientAdapter;

    return-object v0
.end method

.method protected final getLibraryMenuOptionsBar()Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    return-object v0
.end method

.method public final getListener()Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->listener:Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;

    return-object v0
.end method

.method public final getScreenContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    return-object v0
.end method

.method public final getSupportFragmentManager$LibraryModule_release()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewOptionsModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivate()V
    .locals 6

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->isActivated:Z

    .line 65
    iget-boolean v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->isStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->markAsReadHiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    iget-object v2, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "screenContext.activity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->showToastIfNecessary(Lcom/amazon/kcp/library/LibraryFilterStateManager;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "filterStateManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->viewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

    iget-object v5, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->currentContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v5, :cond_2

    .line 71
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->setupLibraryMenuOptionsToolbar(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/LibraryContext;)V

    goto :goto_1

    :cond_2
    const-string v0, "currentContext"

    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "fragmentHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->library_screenlet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    new-instance p2, Lcom/amazon/kcp/library/SwipeRefreshHelper;

    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->screenContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->pull_to_refresh_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v3, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onCreate$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onCreate$1;-><init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V

    .line 89
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/amazon/kcp/library/SwipeRefreshHelper;-><init>(Landroid/content/Context;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ljava/lang/String;Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    .line 96
    invoke-static {}, Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher;->getLibraryViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-result-object p2

    const-string v0, "LibraryViewOptionsModelF\u2026LibraryViewOptionsModel()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->setViewOptionsModel(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V

    const-string/jumbo p2, "rootView"

    .line 97
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDeactivate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->isActivated:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->currentContext:Lcom/amazon/kcp/library/LibraryContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->filterChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->deregisterListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    .line 82
    iput-object v1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->filterChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getSupportFragmentManager$LibraryModule_release()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->onDestroy(Landroidx/fragment/app/FragmentManager;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->destroy()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "fragmentHandler"

    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "currentContext"

    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "intent.extras ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookId"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "extras.getString(GROUP_ID) ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->setTitle(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->createFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 106
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->createLibraryFilter(Ljava/lang/String;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->registerSharedFilterItemsIfNecessary(Lcom/amazon/kcp/library/ILibraryFilter;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->createLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 109
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->createLibraryContext(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/library/LibraryContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->currentContext:Lcom/amazon/kcp/library/LibraryContext;

    .line 110
    new-instance p1, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onNewIntent$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onNewIntent$1;-><init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->filterChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    .line 113
    iget-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->currentContext:Lcom/amazon/kcp/library/LibraryContext;

    const-string v1, "currentContext"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->filterChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {p1, v3}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->registerListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->previousContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->currentContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->previousContext:Lcom/amazon/kcp/library/LibraryContext;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSerializedState()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->restoreFromSerializedState(Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->fragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->currentContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v3}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->createAndShowSecondaryMenu$LibraryModule_release(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryContext;)V

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->show(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "fragmentHandler"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "filterStateManager"

    .line 109
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    return-void
.end method

.method protected final setSwipeRefreshHelper(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewOptionsModel(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    return-void
.end method

.method public abstract show(Ljava/lang/String;Ljava/lang/String;)V
.end method
