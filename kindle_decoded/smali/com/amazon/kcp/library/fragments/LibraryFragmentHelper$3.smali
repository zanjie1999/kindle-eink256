.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

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
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 194
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$302(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Z)Z

    .line 195
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onCreateLoader()Landroidx/loader/content/Loader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 205
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$400(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    return-void
.end method
