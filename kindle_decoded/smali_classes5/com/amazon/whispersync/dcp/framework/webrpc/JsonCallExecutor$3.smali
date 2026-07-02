.class Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;
.super Ljava/lang/Object;
.source "JsonCallExecutor.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->execute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable<",
        "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
        "TResponseType;>;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$000(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-result-object v0

    const-string v1, "JsonCallExecutor"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->pushThreadLocalTag(Ljava/lang/String;)V

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$100(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {v2}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$000(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->popThreadLocalTag(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {v2}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$000(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->popThreadLocalTag(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$3;->call()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0

    return-object v0
.end method
