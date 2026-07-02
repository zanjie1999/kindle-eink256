.class public Lcom/amazon/xray/plugin/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static logger:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 124
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public static setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/amazon/xray/plugin/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
