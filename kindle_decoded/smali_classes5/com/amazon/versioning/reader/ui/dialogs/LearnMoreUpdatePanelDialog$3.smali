.class Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;
.super Ljava/lang/Object;
.source "LearnMoreUpdatePanelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;->getNonRubyDialog()Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;

    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 103
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;

    iget-object v0, p1, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->dialogCompletionListner:Lcom/amazon/versioning/interfaces/DialogActionListener;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/versioning/interfaces/DialogActionListener;->onDialogRequestForUIChange(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$3;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;

    const-string v0, "KCUPA_UPDATE_PANEL"

    const-string v1, "UPDATE_PANEL.LEARN_MORE_CHANGE_SETTING_CLICKED"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
