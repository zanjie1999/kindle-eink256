.class public final Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;
.source "CollectionsRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;",
        "Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;"
    }
.end annotation


# static fields
.field private static final COLLECTIONS_LOADER_ID:I = 0x9

.field private static final COLLECTION_FILTER_KEY:Ljava/lang/String; = "CollectionFilter"


# instance fields
.field private filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field private showInformativeToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;-><init>()V

    .line 26
    sget-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method


# virtual methods
.method public getImageDimension()Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 2

    .line 68
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreferredAspectRatio()F
    .locals 1

    const v0, 0x3fd33333    # 1.65f

    return v0
.end method

.method public bridge synthetic newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getMultiChoiceListener()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;-><init>(Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    .line 59
    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->init()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v0
.end method

.method protected newHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/16 v2, 0x9

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string v0, "Utils.getFactory().userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getShowCollectionsInformationDialog()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->showInformativeToast:Z

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$onActivityCreated$1;-><init>(Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->addHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "CollectionFilter"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string/jumbo v0, "savedInstanceState.getSt\u2026tionFilter.ALL.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/kindle/krx/collections/CollectionFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 93
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->restoreCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.CollectionsFragmentHelper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionFilter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.CollectionsFragmentHelper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showInformativeToast(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->showInformativeToast:Z

    return-void
.end method
