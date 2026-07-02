.class Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment$1;
.super Ljava/lang/Object;
.source "StartActionsPitchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->setUpsellButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;

    invoke-static {p1}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->access$000(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->onUpsellButtonClicked()V

    return-void
.end method
