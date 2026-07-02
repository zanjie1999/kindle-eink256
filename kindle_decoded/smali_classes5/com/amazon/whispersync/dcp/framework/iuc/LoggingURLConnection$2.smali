.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;
.super Ljava/lang/Object;
.source "LoggingURLConnection.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

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

    .line 131
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$201(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logConnectionMade()V

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoOutput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logUploadComplete()V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$300(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logUploadTimingDisabled()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
