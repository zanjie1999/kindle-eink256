.class Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;
.super Ljava/lang/Object;
.source "DelayRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/DelayRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseRequestRunnable"
.end annotation


# instance fields
.field private final executableCommand:Lcom/audible/hushpuppy/controller/IExecutableCommand;

.field private final purchaseAudioModel:Lcom/audible/hushpuppy/PurchaseAudioModel;

.field final synthetic this$0:Lcom/audible/hushpuppy/controller/DelayRequestHandler;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/DelayRequestHandler;Lcom/audible/hushpuppy/PurchaseAudioModel;Lcom/audible/hushpuppy/controller/IExecutableCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            "Lcom/audible/hushpuppy/controller/IExecutableCommand<",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->this$0:Lcom/audible/hushpuppy/controller/DelayRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->purchaseAudioModel:Lcom/audible/hushpuppy/PurchaseAudioModel;

    .line 108
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->executableCommand:Lcom/audible/hushpuppy/controller/IExecutableCommand;

    return-void
.end method


# virtual methods
.method public getPurchaseAudioModel()Lcom/audible/hushpuppy/PurchaseAudioModel;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->purchaseAudioModel:Lcom/audible/hushpuppy/PurchaseAudioModel;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->executableCommand:Lcom/audible/hushpuppy/controller/IExecutableCommand;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->purchaseAudioModel:Lcom/audible/hushpuppy/PurchaseAudioModel;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/controller/IExecutableCommand;->execute(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->this$0:Lcom/audible/hushpuppy/controller/DelayRequestHandler;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/DelayRequestHandler;->access$000(Lcom/audible/hushpuppy/controller/DelayRequestHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/DelayRequestHandler$PurchaseRequestRunnable;->purchaseAudioModel:Lcom/audible/hushpuppy/PurchaseAudioModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/PurchaseAudioModel;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
