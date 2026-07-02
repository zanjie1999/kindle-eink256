.class Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;
.super Ljava/lang/Object;
.source "MiniPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 229
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->access$000(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->emitPerfMarkerForPressPlayButton(Ljava/lang/String;Z)V

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onPlayerPlayControlClicked()V

    .line 237
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$3;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-static {p1}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->access$100(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    return-void
.end method
