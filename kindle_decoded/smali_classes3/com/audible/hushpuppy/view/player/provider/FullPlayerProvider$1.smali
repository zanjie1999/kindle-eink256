.class Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider$1;
.super Ljava/lang/Object;
.source "FullPlayerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->refreshSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider$1;->this$0:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider$1;->this$0:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->access$000(Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider$1;->this$0:Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->access$000(Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshSeekBar()V

    .line 237
    invoke-static {}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "EBook is open and refreshed seek bar"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Unable to refresh seek bar"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
