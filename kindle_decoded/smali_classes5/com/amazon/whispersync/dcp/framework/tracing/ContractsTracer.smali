.class public Lcom/amazon/whispersync/dcp/framework/tracing/ContractsTracer;
.super Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;
.source "ContractsTracer.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/TracingManager;


# instance fields
.field private final mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;


# direct methods
.method public constructor <init>([Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;-><init>()V

    .line 11
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;-><init>([Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/ContractsTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    return-void
.end method


# virtual methods
.method public disableTracing()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/ContractsTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->disable()V

    return-void
.end method

.method public enableTracing()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/ContractsTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->enable()V

    return-void
.end method

.method public setTracer(Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/ContractsTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->setTracer(Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;)V

    return-void
.end method

.method public trace(Ljava/lang/Enum;II)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/ContractsTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->trace(Ljava/lang/Enum;II)V

    return-void
.end method

.method public trace(Ljava/lang/Enum;IILjava/lang/String;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/ContractsTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->trace(Ljava/lang/Enum;IILjava/lang/String;)V

    return-void
.end method
