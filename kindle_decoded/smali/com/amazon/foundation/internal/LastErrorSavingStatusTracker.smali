.class public Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;
.super Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;
.source "LastErrorSavingStatusTracker.java"


# static fields
.field private static NO_ERROR:Ljava/lang/String;

.field private static nonErrorStates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    const-string v1, "NO_ERROR"

    .line 20
    sput-object v1, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->NO_ERROR:Ljava/lang/String;

    .line 23
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->NO_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;-><init>(Lcom/amazon/kindle/services/download/IStatusTracker;)V

    return-void
.end method


# virtual methods
.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;->nonErrorStates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestState:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->latestSubstate:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/LastStateSavingStatusTracker;->delegate:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
