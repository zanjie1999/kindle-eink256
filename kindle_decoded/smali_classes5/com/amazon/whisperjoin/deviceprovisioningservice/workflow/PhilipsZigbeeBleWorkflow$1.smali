.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$1;
.super Ljava/lang/Object;
.source "PhilipsZigbeeBleWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->run(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "An error occurred while executing workflow"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$1;->apply(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
