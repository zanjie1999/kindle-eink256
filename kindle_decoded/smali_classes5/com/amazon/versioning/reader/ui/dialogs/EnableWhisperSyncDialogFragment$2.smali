.class Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$2;
.super Ljava/lang/Object;
.source "EnableWhisperSyncDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;->getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;

.field final synthetic val$builder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$2;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;

    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$2;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$2;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 55
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$2;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;

    iget-object p2, p1, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->dialogCompletionListner:Lcom/amazon/versioning/interfaces/DialogActionListener;

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/versioning/interfaces/DialogActionListener;->onDialogRequestForActivityTermination(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
