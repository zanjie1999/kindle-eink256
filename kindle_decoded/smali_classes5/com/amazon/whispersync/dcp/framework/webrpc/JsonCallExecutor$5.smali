.class Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;
.super Ljava/lang/Object;
.source "JsonCallExecutor.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->serializeBody()[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable<",
        "[B",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$300(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$400(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$5;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$300(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
