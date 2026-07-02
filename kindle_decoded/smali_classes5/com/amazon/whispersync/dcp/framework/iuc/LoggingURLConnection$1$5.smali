.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;
.super Ljava/lang/Object;
.source "LoggingURLConnection.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->write([BII)V
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

.field final synthetic val$count:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;[BII)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->val$buffer:[B

    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->val$offset:I

    iput p4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->val$count:I

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

    .line 114
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->val$inner:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->val$buffer:[B

    iget v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->val$offset:I

    iget v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->val$count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    iget v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;->val$count:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logBytesUploaded(J)V

    const/4 v0, 0x0

    return-object v0
.end method
