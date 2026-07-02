.class Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$1;
.super Ljava/lang/Object;
.source "PlayerViewModelObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->refreshPlayerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$1;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$1;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$000(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Received event while PlayerView is null. Ignoring."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 190
    invoke-static {}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "PlayerView is invisible. No refresh needed."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void

    .line 194
    :cond_2
    invoke-static {}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v1

    const-string v2, "Refreshing %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;->refresh()V

    return-void
.end method
