.class Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment$1;
.super Ljava/lang/Object;
.source "AutoSettingDisabledDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;->getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;

.field final synthetic val$builder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment$1;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;

    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment$1;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment$1;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 50
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment$1;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;

    iget-object p2, p1, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->dialogCompletionListner:Lcom/amazon/versioning/interfaces/DialogActionListener;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/versioning/interfaces/DialogActionListener;->onDialogRequestForUIChange(Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment$1;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;

    const-string p2, "KCUPA_UPDATE_PANEL"

    const-string v0, "UPDATE_PANEL.ABU_DIALOG_ENABLE"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
