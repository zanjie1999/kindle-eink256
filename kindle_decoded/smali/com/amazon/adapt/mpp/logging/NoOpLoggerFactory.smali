.class public Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory;
.super Ljava/lang/Object;
.source "NoOpLoggerFactory.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/LoggerFactory$SPILoggerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory$NoOpLogWriter;
    }
.end annotation


# instance fields
.field private final logger:Lcom/amazon/adapt/mpp/logging/Logger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;

    new-instance v1, Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory$NoOpLogWriter;

    invoke-direct {v1}, Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory$NoOpLogWriter;-><init>()V

    new-instance v2, Lcom/amazon/adapt/mpp/logging/AlwaysOffLogFilter;

    invoke-direct {v2}, Lcom/amazon/adapt/mpp/logging/AlwaysOffLogFilter;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;-><init>(Lcom/amazon/adapt/mpp/logging/LogWriter;Lcom/amazon/adapt/mpp/logging/LogFilter;)V

    iput-object v0, p0, Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory;->logger:Lcom/amazon/adapt/mpp/logging/Logger;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/amazon/adapt/mpp/logging/Logger;
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/amazon/adapt/mpp/logging/NoOpLoggerFactory;->logger:Lcom/amazon/adapt/mpp/logging/Logger;

    return-object p1
.end method
