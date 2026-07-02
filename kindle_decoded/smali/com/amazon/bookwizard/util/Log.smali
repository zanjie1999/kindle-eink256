.class public Lcom/amazon/bookwizard/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static LOG:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/bookwizard/util/Log;->LOG:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/bookwizard/util/Log;->LOG:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/bookwizard/util/Log;->LOG:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/bookwizard/util/Log;->LOG:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/amazon/bookwizard/util/Log;->LOG:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/bookwizard/util/Log;->LOG:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/amazon/bookwizard/util/Log;->LOG:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->critical(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
