.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$1;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowController.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->start()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Controller subscribed to. Starting..."

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$1;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
