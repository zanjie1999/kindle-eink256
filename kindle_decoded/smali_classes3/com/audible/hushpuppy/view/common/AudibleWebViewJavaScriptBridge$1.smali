.class Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$1;
.super Ljava/lang/Object;
.source "AudibleWebViewJavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->onPlaySampleClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$1;->this$0:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge$1;->this$0:Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;->access$000(Lcom/audible/hushpuppy/view/common/AudibleWebViewJavaScriptBridge;)Lcom/audible/hushpuppy/controller/LocationSeekerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->upsellPlayPauseButtonClicked()V

    return-void
.end method
