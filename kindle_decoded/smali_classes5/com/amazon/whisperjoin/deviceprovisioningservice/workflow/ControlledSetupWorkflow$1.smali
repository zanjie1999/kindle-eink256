.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$1;
.super Ljava/lang/Object;
.source "ControlledSetupWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->start()V
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
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;->access$102(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/ControlledSetupWorkflow$1;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
