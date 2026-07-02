.class public final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LibraryTransferDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryTransferDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryTransferDialogFragment.kt\ncom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,41:1\n1#2:42\n734#3:43\n825#3,2:44\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryTransferDialogFragment.kt\ncom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment\n*L\n25#1:43\n25#1,2:44\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$startTransferService(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;->startTransferService()V

    return-void
.end method

.method private final startTransferService()V
    .locals 4

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-static {}, Lcom/amazon/kcp/util/ServiceUtilsManager;->getInstance()Lcom/amazon/kcp/util/ServiceUtils;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity.applicationContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kcp/util/ServiceUtils;->startServiceSafely(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 21
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->library_transfer_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->library_transfer_dialog_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    invoke-virtual {v4}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->getTotalTransferSize()J

    move-result-wide v4

    const-string v6, "#.0"

    invoke-static {v3, v4, v5, v6}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->formatSize(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 25
    sget-object v3, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    invoke-virtual {v3}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->booksMetadataToTransfer()Ljava/util/Collection;

    move-result-object v3

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/amazon/kindle/content/ContentMetadata;

    .line 25
    sget-object v8, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;

    invoke-virtual {v8, v7}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferUtils;->shouldSilentTransferBook(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->library_transfer_dialog_positive:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment$onCreateDialog$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment$onCreateDialog$3;-><init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->library_transfer_dialog_negative:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment$onCreateDialog$4;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment$onCreateDialog$4;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(acti\u2026                .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
