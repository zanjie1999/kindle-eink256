.class final Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "AaThemeDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->buildDialogView(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dialogFragment$inlined:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;->$dialogFragment$inlined:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->access$getPositiveButtonAction$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->access$getErrorView$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->access$getErrorView$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;->$dialogFragment$inlined:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method
