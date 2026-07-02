.class Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;
.super Ljava/lang/Object;
.source "TracerFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TRAPZTracer"
.end annotation


# instance fields
.field private mLogger:Lcom/amazon/android/trapz/TLogger;


# direct methods
.method constructor <init>(Lcom/amazon/android/trapz/TLogger;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;->mLogger:Lcom/amazon/android/trapz/TLogger;

    return-void
.end method


# virtual methods
.method public registerTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;->mLogger:Lcom/amazon/android/trapz/TLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/trapz/TLogger;->getTraceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public trace(III)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;->mLogger:Lcom/amazon/android/trapz/TLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/trapz/TLogger;->l(III)V

    return-void
.end method

.method public trace(IIILjava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;->mLogger:Lcom/amazon/android/trapz/TLogger;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/android/trapz/TLogger;->l(IIILjava/lang/String;)V

    return-void
.end method
