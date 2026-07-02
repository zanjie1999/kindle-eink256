.class public Lcom/amazon/kcp/library/CustomSortDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CustomSortDialogFragment.java"


# instance fields
.field private handler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/CustomSortDialogFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/library/CustomSortDialogFragment;->switchToCustomSort()V

    return-void
.end method

.method private switchToCustomSort()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/library/CustomSortDialogFragment;->handler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->onConfirmCustomSort()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 24
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 27
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->dialog_custom_sort_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/CustomSortDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/CustomSortDialogFragment$1;-><init>(Lcom/amazon/kcp/library/CustomSortDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 35
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setHandler(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/library/CustomSortDialogFragment;->handler:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    return-void
.end method
