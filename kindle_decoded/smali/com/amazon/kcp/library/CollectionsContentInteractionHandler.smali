.class public Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;
.super Lcom/amazon/kcp/library/LibraryContentInteractionHandler;
.source "CollectionsContentInteractionHandler.java"


# static fields
.field private static final DELETE_COLLECTION_DIALOG_TAG:Ljava/lang/String; = "DeleteCollectionDialog"

.field private static final DOWNLOAD_COLLECTION_DIALOG_TAG:Ljava/lang/String; = "DownloadCollectionDialog"

.field private static final RENAME_COLLECTION_DIALOG_TAG:Ljava/lang/String; = "RenameCollectionDialog"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method


# virtual methods
.method public onActionItemSelectedForCollections(Landroid/view/ActionMode;Landroid/view/MenuItem;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Landroid/view/MenuItem;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)Z"
        }
    .end annotation

    .line 32
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 33
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_rename:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 34
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->newInstance(Ljava/lang/String;)Lcom/amazon/kcp/library/RenameCollectionDialogFragment;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    .line 36
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p3, "RenameCollectionDialog"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    .line 38
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_delete:I

    if-ne v0, v2, :cond_1

    .line 39
    invoke-static {p3}, Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;->newInstance(Ljava/util/List;)Lcom/amazon/kcp/library/DeleteCollectionDialogFragment;

    move-result-object p2

    .line 40
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    .line 41
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "DeleteCollectionDialog"

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v3

    .line 44
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_download:I

    if-ne p2, v0, :cond_2

    .line 45
    invoke-static {p3}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->newInstance(Ljava/util/List;)Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;

    move-result-object p2

    .line 46
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    .line 47
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "DownloadCollectionDialog"

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v3

    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "RenameCollectionDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 58
    check-cast v0, Lcom/amazon/kcp/library/LibraryDialogFragment;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V

    return-void
.end method
