.class Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;
.super Ljava/io/OutputStream;
.source "LoggingURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

.field final synthetic val$inner:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;Ljava/io/OutputStream;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->val$inner:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->CLOSE_OUTPUT_STREAM:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$2;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$2;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->FLUSH:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$3;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$3;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WRITE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;I)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WRITE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$4;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;[B)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/Tracer;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;->WRITE:Lcom/amazon/whispersync/dcp/framework/iuc/Tracer$Traces;

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1$5;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/LoggingURLConnection$1;[BII)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    return-void
.end method
