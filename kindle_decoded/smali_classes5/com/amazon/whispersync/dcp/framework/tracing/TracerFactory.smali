.class public Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;
.super Ljava/lang/Object;
.source "TracerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;

    invoke-static {p1}, Lcom/amazon/android/trapz/TLoggerFactory;->getLogger(Ljava/lang/String;)Lcom/amazon/android/trapz/TLogger;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory$TRAPZTracer;-><init>(Lcom/amazon/android/trapz/TLogger;)V

    return-object v0
.end method
