.class Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$4;
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

    .line 115
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$4;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;

    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$4;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$4;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 120
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog$4;->this$0:Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;

    const-string v0, "KCUPA_UPDATE_PANEL"

    const-string v1, "UPDATE_PANEL.LEARN_MORE_CLOSED"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
