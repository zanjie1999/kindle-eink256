.class Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$2;
.super Ljava/lang/Object;
.source "JsonCallExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->submit(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
        "TResponseType;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$2;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$2;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->execute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$2;->call()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0

    return-object v0
.end method
