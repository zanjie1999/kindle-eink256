.class Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;
.super Ljava/lang/Object;
.source "SysOutLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SysOutLogWriter"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->mName:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 57
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->mName:Ljava/lang/String;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string p1, "%-5s %s - %s%n"

    invoke-virtual {p3, p1, v0}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 59
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    iget-object p1, p0, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->mName:Ljava/lang/String;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    invoke-static {p3}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string p1, "%-5s %s - %s%n%s%n"

    invoke-virtual {v4, p1, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "DEBUG"

    .line 37
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public writeError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "ERROR"

    .line 52
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "INFO"

    .line 42
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "VERBOSE"

    .line 32
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "WARN"

    .line 47
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
