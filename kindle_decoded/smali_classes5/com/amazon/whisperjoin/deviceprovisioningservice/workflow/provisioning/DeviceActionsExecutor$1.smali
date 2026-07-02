.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor$1;
.super Ljava/lang/Object;
.source "DeviceActionsExecutor.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An Error Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionsExecutor$1;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    return-void
.end method
