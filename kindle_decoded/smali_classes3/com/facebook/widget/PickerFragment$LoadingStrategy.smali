.class abstract Lcom/facebook/widget/PickerFragment$LoadingStrategy;
.super Ljava/lang/Object;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoadingStrategy"
.end annotation


# instance fields
.field protected adapter:Lcom/facebook/widget/GraphObjectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected loader:Lcom/facebook/widget/GraphObjectPagingLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectPagingLoader<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/facebook/widget/GraphObjectAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;-><init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/GraphObjectPagingLoader;

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    .line 869
    new-instance v1, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy$2;-><init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->setOnErrorListener(Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;)V

    .line 879
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    .line 881
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->getCursor()Lcom/facebook/widget/SimpleGraphObjectCursor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/widget/GraphObjectAdapter;->changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z

    .line 882
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    new-instance v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$3;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy$3;-><init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V

    invoke-virtual {p1, v0}, Lcom/facebook/widget/GraphObjectAdapter;->setOnErrorListener(Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;)V

    return-void
.end method

.method protected canSkipRoundTripIfCached()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearResults()V
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->clearResults()V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setDataNeededListener(Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;)V

    .line 894
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setOnErrorListener(Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;)V

    .line 895
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->setOnErrorListener(Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;)V

    .line 897
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    .line 898
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    return-void
.end method

.method public isDataPresentOrLoading()Z
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onCreateLoader()Lcom/facebook/widget/GraphObjectPagingLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/GraphObjectPagingLoader<",
            "TT;>;"
        }
    .end annotation

    .line 919
    new-instance v0, Lcom/facebook/widget/GraphObjectPagingLoader;

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {v2}, Lcom/facebook/widget/PickerFragment;->access$600(Lcom/facebook/widget/PickerFragment;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/GraphObjectPagingLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectPagingLoader<",
            "TT;>;",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 931
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-virtual {p1, p2}, Lcom/facebook/widget/PickerFragment;->updateAdapter(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method protected onLoadReset(Lcom/facebook/widget/GraphObjectPagingLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectPagingLoader<",
            "TT;>;)V"
        }
    .end annotation

    .line 927
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/widget/GraphObjectAdapter;->changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z

    return-void
.end method

.method protected onStartLoading(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectPagingLoader<",
            "TT;>;",
            "Lcom/facebook/Request;",
            ")V"
        }
    .end annotation

    .line 923
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-virtual {p1}, Lcom/facebook/widget/PickerFragment;->displayActivityCircle()V

    return-void
.end method

.method public startLoading(Lcom/facebook/Request;)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->canSkipRoundTripIfCached()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;Z)V

    .line 910
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {p0, v0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onStartLoading(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Request;)V

    :cond_0
    return-void
.end method
