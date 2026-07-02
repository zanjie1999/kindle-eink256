.class public final Lcom/amazon/reader/notifications/logging/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static logger:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 107
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public static setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/amazon/reader/notifications/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
