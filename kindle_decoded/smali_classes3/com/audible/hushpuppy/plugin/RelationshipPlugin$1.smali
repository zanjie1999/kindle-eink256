.class Lcom/audible/hushpuppy/plugin/RelationshipPlugin$1;
.super Ljava/lang/Object;
.source "RelationshipPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->onEventAsync(Lcom/audible/hushpuppy/common/event/upsell/PurchaseCompletedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/plugin/RelationshipPlugin;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin$1;->this$0:Lcom/audible/hushpuppy/plugin/RelationshipPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 200
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v1}, Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;-><init>(II)V

    .line 201
    new-instance v1, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;

    iget-object v2, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin$1;->this$0:Lcom/audible/hushpuppy/plugin/RelationshipPlugin;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/audible/hushpuppy/common/upsell/ToDoCheckCountdownTimer;-><init>(Lcom/audible/hushpuppy/common/upsell/CountDownTimerSetting;Lcom/amazon/kindle/krx/sync/ISyncManager;)V

    .line 202
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
