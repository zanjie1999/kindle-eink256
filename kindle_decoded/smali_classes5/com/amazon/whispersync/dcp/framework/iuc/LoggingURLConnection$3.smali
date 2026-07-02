.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;
.super Ljava/lang/Object;
.source "LoggingURLConnection.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->getResponseCode()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable<",
        "Ljava/lang/Integer;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$400(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$501(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$402(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$400(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logResponseReceived(ILjava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logDownloadComplete()V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$600(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logDownloadTimingDisabled()V

    .line 180
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$400(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Ljava/lang/Integer;

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

    .line 157
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$3;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
