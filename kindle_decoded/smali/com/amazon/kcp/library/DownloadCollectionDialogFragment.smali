.class public Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;
.super Lcom/amazon/kcp/library/LibraryDialogFragment;
.source "DownloadCollectionDialogFragment.java"


# static fields
.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private COLLECTION_DOWNLOAD_VIA_CONTEXTMENU:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-class v0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;

    const-string v1, "Collection"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryDialogFragment;-><init>()V

    const-string v0, "CollectionDownloadViaContextMenu"

    .line 40
    iput-object v0, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->COLLECTION_DOWNLOAD_VIA_CONTEXTMENU:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->COLLECTION_DOWNLOAD_VIA_CONTEXTMENU:Ljava/lang/String;

    return-object p0
.end method

.method public static newInstance(Ljava/util/List;)Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)",
            "Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;-><init>()V

    .line 46
    invoke-static {p0, v0}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->storeCollectionIds(Ljava/util/List;Landroidx/fragment/app/DialogFragment;)V

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

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
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

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "CollectionIds"

    .line 69
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected downloadCollections()V
    .locals 10

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->collectionIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    new-instance v6, Lcom/amazon/kcp/library/CollectionItemsFilter;

    invoke-direct {v6, v1}, Lcom/amazon/kcp/library/CollectionItemsFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const-string v8, "All"

    const/4 v9, 0x0

    .line 111
    invoke-static/range {v4 .. v9}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Lcom/amazon/kindle/util/ConcurrentDataModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 117
    sget-object v3, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->TAG:Ljava/lang/String;

    const-string v4, "Fail to get items in a collection"

    invoke-static {v3, v4, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v2, :cond_0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 122
    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 123
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Ljava/util/Collection;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "CollectionIds"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;->collectionIds:Ljava/util/ArrayList;

    .line 80
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->download_collection_dialog_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->download_collection_dialog_message:I

    .line 83
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 86
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->download:I

    new-instance v1, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/DownloadCollectionDialogFragment$1;-><init>(Lcom/amazon/kcp/library/DownloadCollectionDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
