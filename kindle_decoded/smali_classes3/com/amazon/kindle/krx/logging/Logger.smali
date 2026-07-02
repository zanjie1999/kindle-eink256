.class public Lcom/amazon/kindle/krx/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public critical(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public critical(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 32
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 20
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
