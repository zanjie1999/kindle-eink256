.class public abstract Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;
.super Ljava/lang/Object;
.source "BaseTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;,
        Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;
    }
.end annotation


# static fields
.field private static final EXECUTING:I = 0x1

.field private static final NOT_EXECUTING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentThreadIdToExtra()I
    .locals 2

    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->threadIdToExtra(J)I

    move-result v0

    return v0
.end method

.method public objectToExtra(Ljava/lang/Object;)I
    .locals 0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public threadIdToExtra(J)I
    .locals 0

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->hashCode()I

    move-result p1

    return p1
.end method

.method public trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum;",
            "I",
            "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;II)V

    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-interface {p3}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;->call()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;II)V

    return-object p3

    :catchall_0
    move-exception p3

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;II)V

    throw p3
.end method

.method public trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Enum;",
            "I",
            "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable<",
            "TT;TE;>;)TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;II)V

    const/4 v0, 0x0

    .line 34
    :try_start_0
    invoke-interface {p3}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;->call()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;II)V

    return-object p3

    :catchall_0
    move-exception p3

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;II)V

    throw p3
.end method

.method public abstract trace(Ljava/lang/Enum;II)V
.end method

.method public abstract trace(Ljava/lang/Enum;IILjava/lang/String;)V
.end method

.method public traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Enum;",
            "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->currentThreadIdToExtra()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Enum;",
            "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable<",
            "TT;TE;>;)TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->currentThreadIdToExtra()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->trace(Ljava/lang/Enum;ILcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
