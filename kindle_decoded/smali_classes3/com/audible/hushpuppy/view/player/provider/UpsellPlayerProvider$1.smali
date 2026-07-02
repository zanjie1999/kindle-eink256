.class Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider$1;
.super Ljava/lang/Object;
.source "UpsellPlayerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->refreshUpsellPlayerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider$1;->this$0:Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider$1;->this$0:Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    iget-object v0, v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshActionBarDecoration()V

    return-void
.end method
