.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WorkflowFailureWJErrorMapper;
.super Ljava/lang/Object;
.source "WorkflowFailureWJErrorMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 11
    instance-of p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceRecentlyProvisionedException;

    if-eqz p1, :cond_0

    .line 12
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Workflow;->deviceRecentlyProvisioned()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Workflow;->unknown()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 8
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WorkflowFailureWJErrorMapper;->map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
