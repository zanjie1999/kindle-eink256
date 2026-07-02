.class Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment$1;
.super Ljava/lang/Object;
.source "StartActionsProcessingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;->upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->onCancel()V

    return-void
.end method
