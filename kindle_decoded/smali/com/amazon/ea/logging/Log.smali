.class public Lcom/amazon/ea/logging/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.logging.Log"

.field private static logger:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/ea/logging/SystemLogger;

    invoke-direct {v0}, Lcom/amazon/ea/logging/SystemLogger;-><init>()V

    sput-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public static setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/amazon/ea/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 53
    sput-object p0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/ea/logging/Log;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
