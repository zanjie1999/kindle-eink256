.class Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;
.super Ljava/lang/Object;
.source "PlayerViewModelObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->togglePlayerView()V
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

    .line 202
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$200(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$300(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$200(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    .line 214
    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$400(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver$2;->this$0:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;->access$500(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewModelObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
