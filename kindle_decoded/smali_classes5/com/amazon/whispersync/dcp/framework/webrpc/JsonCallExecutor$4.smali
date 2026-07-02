.class Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;
.super Ljava/lang/Object;
.source "JsonCallExecutor.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->doExecute()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
        "TResponseType;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

.field final synthetic val$response:Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;->val$response:Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult<",
            "TResponseType;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;->val$response:Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$200(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$4;->call()Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object v0

    return-object v0
.end method
