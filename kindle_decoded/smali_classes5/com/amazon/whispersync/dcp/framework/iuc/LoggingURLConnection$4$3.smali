.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;
.super Ljava/lang/Object;
.source "LoggingURLConnection.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;->read([BII)I
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
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;

.field final synthetic val$buffer:[B

.field final synthetic val$length:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;[BII)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->val$buffer:[B

    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->val$offset:I

    iput p4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;->val$inner:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->val$buffer:[B

    iget v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->val$offset:I

    iget v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->val$length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;

    iget-object v1, v1, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logBytesDownloaded(J)V

    .line 277
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 266
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$4$3;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
