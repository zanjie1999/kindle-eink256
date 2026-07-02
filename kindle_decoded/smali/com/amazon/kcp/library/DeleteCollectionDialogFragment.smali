.class public Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;
.super Lcom/amazon/kcp/library/LibraryDialogFragment;
.source "DeleteCollectionDialogFragment.java"


# instance fields
.field private collectionIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)",
            "Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;-><init>()V

    .line 37
    invoke-static {p0, v0}, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;->storeCollectionIds(Ljava/util/List;Landroidx/fragment/app/DialogFragment;)V

    return-object v0
.end method

.method protected static storeCollectionIds(Ljava/util/List;Landroidx/fragment/app/DialogFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;",
            "Landroidx/fragment/app/DialogFragment;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 57
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "CollectionIds"

    .line 60
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected deleteCollections()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;->collectionIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->deleteCollection(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "CollectionIds"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;->collectionIds:Ljava/util/ArrayList;

    .line 68
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->delete_collection_dialog_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->delete_collection_dialog_message:I

    .line 71
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    .line 72
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->delete:I

    new-instance v1, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment$1;-><init>(Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
