.class Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment$LoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/facebook/widget/SimpleGraphObjectCursor<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;>;"
        }
    .end annotation

    .line 848
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onCreateLoader()Lcom/facebook/widget/GraphObjectPagingLoader;

    move-result-object p1

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;>;",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v1, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-ne p1, v1, :cond_0

    .line 857
    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void

    .line 855
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Received callback for unknown loader."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 845
    check-cast p2, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v1, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-ne p1, v1, :cond_0

    .line 865
    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadReset(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    return-void

    .line 863
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Received callback for unknown loader."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
