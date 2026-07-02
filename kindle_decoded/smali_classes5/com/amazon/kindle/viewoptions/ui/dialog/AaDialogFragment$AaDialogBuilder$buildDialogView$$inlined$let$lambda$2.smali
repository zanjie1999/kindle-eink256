.class final Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "AaDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->buildDialogView(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dialogFragment$inlined:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$2;->$dialogFragment$inlined:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButtonAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$2;->$dialogFragment$inlined:Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
