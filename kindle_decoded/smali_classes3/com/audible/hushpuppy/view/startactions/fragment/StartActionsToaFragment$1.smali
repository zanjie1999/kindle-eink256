.class Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment$1;
.super Ljava/lang/Object;
.source "StartActionsToaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->setUpsellButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;

    invoke-static {p1}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->access$000(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->onToaRedeemButtonClicked()V

    return-void
.end method
