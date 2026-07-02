.class public Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;
.source "BackIssuesFragmentHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler$Companion;
    }
.end annotation


# static fields
.field private static final PARENT_ASIN_KEY:Ljava/lang/String; = "BackIssuesFragmentHandler_parentAsin"

.field private static final TITLE_KEY:Ljava/lang/String; = "BackIssuesFragmentHandler_periodicalTitle"


# instance fields
.field private groupTitle:Ljava/lang/String;

.field private parentAsin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewOptionsModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFragmentClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 4

    .line 35
    new-instance v0, Lcom/amazon/kcp/library/BackIssuesFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;->parentAsin:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/BackIssuesFilter;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v3, 0x0

    .line 36
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getParentAsin()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;->parentAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 5

    .line 44
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 45
    sget-object v4, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v4, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v3, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 47
    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    :goto_0
    return-object v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->BACK_ISSUES:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;->groupTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final setGroupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "groupTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parentAsin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;->groupTitle:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/BackIssuesFragmentHandler;->parentAsin:Ljava/lang/String;

    return-void
.end method
