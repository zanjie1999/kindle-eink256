.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->showExternalDirectoryPermissionsDialog(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field final synthetic val$parent:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/redding/ReddingActivity;Ljava/io/File;)V
    .locals 0

    .line 521
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;->val$parent:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 524
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 525
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->directory_permission_error_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 526
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->directory_permission_error_dialog_text:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;->val$parent:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 527
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->dismiss:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 528
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$8;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
