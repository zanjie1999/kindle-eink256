.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;
.super Ljava/lang/Object;
.source "LoggingURLConnection.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->write([B)V
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
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

.field final synthetic val$buffer:[B


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;[B)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;->val$buffer:[B

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

    .line 99
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->val$inner:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;->val$buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;->val$buffer:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logBytesUploaded(J)V

    const/4 v0, 0x0

    return-object v0
.end method
