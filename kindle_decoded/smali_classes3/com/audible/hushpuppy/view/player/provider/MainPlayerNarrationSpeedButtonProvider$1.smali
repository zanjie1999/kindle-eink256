.class Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$1;
.super Ljava/lang/Object;
.source "MainPlayerNarrationSpeedButtonProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->refreshReaderActionButtonsOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$1;->this$0:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$1;->this$0:Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;->access$000(Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderActionButtons()V

    return-void
.end method
