.class public Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;
.super Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.source "CollectionsFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;"
    }
.end annotation


# static fields
.field private static isCollectionDownloadEnabled:Z = true


# instance fields
.field protected collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;I",
            "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 44
    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method


# virtual methods
.method protected actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    check-cast v0, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->getCheckedCollections()Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;->onActionItemSelectedForCollections(Landroid/view/ActionMode;Landroid/view/MenuItem;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$menu;->collections_action_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method protected destroyActionMenu(Landroid/view/ActionMode;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->destroyActionMenu(Landroid/view/ActionMode;)V

    return-void
.end method

.method getCheckedCollections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->checkedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getItemId(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getItemId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->getItemId(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isUsingCollections()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected itemCheckedStateChanged(IZLcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 110
    invoke-interface {p3}, Lcom/amazon/kindle/collections/dto/ICollection;->isEnabledInMultiSelect()Z

    move-result p2

    if-nez p2, :cond_1

    .line 111
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {p2, p3, p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->setItemChecked(Ljava/lang/Object;IZ)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic itemCheckedStateChanged(IZLjava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p3, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->itemCheckedStateChanged(IZLcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result p1

    return p1
.end method

.method protected newCollectionsContentListener(Lcom/amazon/kcp/library/PausableListener$Callback;Z)Lcom/amazon/kcp/library/CollectionsContentListener;
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->support_collections_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/amazon/kcp/library/ThumbnailCollectionsContentListener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/ThumbnailCollectionsContentListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V

    return-object v0

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->newCollectionsContentListener(Lcom/amazon/kcp/library/PausableListener$Callback;Z)Lcom/amazon/kcp/library/CollectionsContentListener;

    move-result-object p1

    return-object p1
.end method

.method protected newContentInteractionHandler(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)Lcom/amazon/kcp/library/LibraryContentInteractionHandler;
    .locals 3

    .line 119
    new-instance v0, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 120
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-object v0
.end method

.method protected onCreateLoader()Landroidx/loader/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;>;"
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 135
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->ASC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 134
    invoke-static {v1, v0, v2, v3}, Lcom/amazon/kcp/library/CollectionsCursorFactory;->createLoaderForUserAndSort(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Landroidx/loader/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;)V
    .locals 1

    .line 125
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "Collection"

    .line 126
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CollectionFilter"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onItemClickWithReadingStream(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/collections/dto/ICollection;Ljava/lang/String;)V

    return-void
.end method

.method protected prepareActionMenu(Landroid/view/Menu;)V
    .locals 5

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->getCheckedCollections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 85
    :goto_0
    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_rename:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 88
    :goto_1
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_download:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->isCollectionDownloadEnabled:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->postProcessActionMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public restoreCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method

.method public setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHelper;->collectionFilter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refresh()V

    return-void
.end method
