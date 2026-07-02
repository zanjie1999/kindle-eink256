.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;
.super Ljava/lang/Object;
.source "WorkflowResultLogger.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkflowResultLogger"


# instance fields
.field private final mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

.field private final mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 24
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getLastWJResult()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisioningMethod: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->mProvisioningMethod:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WJResult: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/ProvisioneeInfoMessage;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Ljava/lang/String;

    move-result-object v2

    .line 37
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->TAG:Ljava/lang/String;

    const-string v4, "New Workflow WJResult"

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->mWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ErrorCode: [%s]"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 16
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowResultLogger;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)V

    return-void
.end method
