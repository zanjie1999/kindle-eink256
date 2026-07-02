.class public Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;
.super Ljava/lang/Object;
.source "ListenableNetworkOperationsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenableOperation"
.end annotation


# instance fields
.field private final mOperation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;


# direct methods
.method public constructor <init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;->mOperation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    return-void
.end method


# virtual methods
.method protected getOperation()Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;->mOperation:Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    return-object v0
.end method

.method public onExecutionSuccessful()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
