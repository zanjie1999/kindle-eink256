.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;
.super Ljava/lang/Object;
.source "LoggingURLConnection.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->write(I)V
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

.field final synthetic val$oneByte:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iput p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;->val$oneByte:I

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

    .line 54
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;->call()Ljava/lang/Void;

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

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->val$inner:Ljava/io/OutputStream;

    iget v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;->val$oneByte:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;->this$1:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logBytesUploaded(J)V

    const/4 v0, 0x0

    return-object v0
.end method
