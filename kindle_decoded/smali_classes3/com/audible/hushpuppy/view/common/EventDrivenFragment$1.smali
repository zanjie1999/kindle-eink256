.class Lcom/audible/hushpuppy/view/common/EventDrivenFragment$1;
.super Ljava/lang/Object;
.source "EventDrivenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/common/EventDrivenFragment;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/common/EventDrivenFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment$1;->this$0:Lcom/audible/hushpuppy/view/common/EventDrivenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment$1;->this$0:Lcom/audible/hushpuppy/view/common/EventDrivenFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment$1;->this$0:Lcom/audible/hushpuppy/view/common/EventDrivenFragment;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->refresh()V

    :cond_0
    return-void
.end method
