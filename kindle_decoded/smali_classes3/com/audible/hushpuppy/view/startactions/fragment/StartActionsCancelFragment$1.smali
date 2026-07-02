.class Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment$1;
.super Ljava/lang/Object;
.source "StartActionsCancelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;->upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->onReturnFromCancel()V

    return-void
.end method
