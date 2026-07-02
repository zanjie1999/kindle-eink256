.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;
.super Ljava/lang/Object;
.source "WorkflowControllerBuilder.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbortSetup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;->apply(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder$AbortSetup;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/controller/WorkflowControllerBuilder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;->terminateSetup(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    const/4 p1, 0x0

    return-object p1
.end method
