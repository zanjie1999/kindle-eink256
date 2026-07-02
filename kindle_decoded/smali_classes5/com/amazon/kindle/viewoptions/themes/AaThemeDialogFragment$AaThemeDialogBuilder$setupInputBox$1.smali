.class final Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;
.super Ljava/lang/Object;
.source "AaThemeDialogFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setupInputBox(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 232
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->access$getInputView$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->access$getInputView$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 237
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->access$getInputView$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    return-void
.end method
