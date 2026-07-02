.class Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog$2;
.super Ljava/lang/Object;
.source "AutoSettingValueChangeConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;->getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;

.field final synthetic val$builder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog$2;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;

    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog$2;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog$2;->val$builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 63
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog$2;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;

    const-string p2, "KCUPA_SETTINGS"

    const-string v0, "SETTINGS.DISABLE_ABU_DIALOG_CANCEL"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
