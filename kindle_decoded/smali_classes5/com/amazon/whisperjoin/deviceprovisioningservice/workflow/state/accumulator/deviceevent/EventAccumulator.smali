.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;
.super Ljava/lang/Object;
.source "EventAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$UnhandledEventState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TT;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventAccumulator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isWorkflowActive(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getLastWJResult()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->isA(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    .line 59
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->TAG:Ljava/lang/String;

    const-string v1, "Workflow is not active"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method


# virtual methods
.method public accumulate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$1;->$SwitchMap$com$amazon$whisperjoin$deviceprovisioningservice$workflow$state$Event$State:[I

    iget-object v1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->state:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 30
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->update(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1

    .line 26
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1

    .line 24
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->idle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;

    move-result-object p1

    return-object p1
.end method

.method protected abstract error(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;"
        }
    .end annotation
.end method

.method protected idle(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;"
        }
    .end annotation

    .line 38
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$UnhandledEventState;

    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$UnhandledEventState;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)V

    throw p1
.end method

.method protected inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;"
        }
    .end annotation

    .line 41
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$UnhandledEventState;

    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IN_PROGRESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$UnhandledEventState;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)V

    throw p1
.end method

.method public sessionExists(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Z
    .locals 1

    .line 71
    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;->getSession(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/DeviceSession;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 74
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator;->TAG:Ljava/lang/String;

    const-string v0, "Session Doesn\'t Exist"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method protected abstract success(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;"
        }
    .end annotation
.end method

.method protected update(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WJWorkflowStateStore;"
        }
    .end annotation

    .line 44
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$UnhandledEventState;

    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->UPDATE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/accumulator/deviceevent/EventAccumulator$UnhandledEventState;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)V

    throw p1
.end method
