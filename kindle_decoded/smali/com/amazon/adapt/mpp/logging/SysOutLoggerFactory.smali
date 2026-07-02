.class public Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory;
.super Ljava/lang/Object;
.source "SysOutLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/adapt/mpp/logging/Logger;
    .locals 2

    .line 13
    new-instance v0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;

    new-instance v1, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;

    invoke-direct {v1, p1}, Lcom/amazon/adapt/mpp/logging/SysOutLoggerFactory$SysOutLogWriter;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/amazon/adapt/mpp/logging/AlwaysOnLogFilter;

    invoke-direct {p1}, Lcom/amazon/adapt/mpp/logging/AlwaysOnLogFilter;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;-><init>(Lcom/amazon/adapt/mpp/logging/LogWriter;Lcom/amazon/adapt/mpp/logging/LogFilter;)V

    return-object v0
.end method
