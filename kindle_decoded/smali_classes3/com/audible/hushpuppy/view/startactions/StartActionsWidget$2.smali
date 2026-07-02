.class Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$2;
.super Ljava/lang/Object;
.source "StartActionsWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->onEventAsync(Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$2;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$2;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsCancelFragment;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->changeFragment(Ljava/lang/Class;)V

    .line 220
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$2;->this$0:Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->refresh()V

    return-void
.end method
