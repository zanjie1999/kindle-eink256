.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$8;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowController.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->cleanup()Lio/reactivex/functions/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cleanup"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;)V

    return-void
.end method
