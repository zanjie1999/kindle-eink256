.class public Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer;
.super Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;
.source "Tracer.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/dcp/framework/DCPSingleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;)V
    .locals 2
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 60
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;->values()[Lcom/amazon/whispersync/dcp/framework/webrpc/Tracer$Traces;

    move-result-object v0

    const-string/jumbo v1, "webrpc"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;-><init>(Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V

    return-void
.end method
