.class public final Lcom/amazon/kcp/translation/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static s_logger:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kcp/translation/Logger;->s_logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 169
    sget-object v0, Lcom/amazon/kcp/translation/Logger;->s_logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/kcp/translation/Logger;->s_logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static init(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/translation/Logger;->s_logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kcp/translation/Logger;->s_logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    sget-object v0, Lcom/amazon/kcp/translation/Logger;->s_logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
