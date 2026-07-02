.class public Lcom/audible/application/stats/util/LogController;
.super Ljava/lang/Object;
.source "LogController.java"


# static fields
.field private static sLogger:Lcom/audible/application/stats/util/ILogger;


# direct methods
.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/application/stats/util/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/audible/application/stats/util/ILogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/application/stats/util/ILogger;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/application/stats/util/ILogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/audible/application/stats/util/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/application/stats/util/ILogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getLogger()Lcom/audible/application/stats/util/ILogger;
    .locals 1

    .line 33
    sget-object v0, Lcom/audible/application/stats/util/LogController;->sLogger:Lcom/audible/application/stats/util/ILogger;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->newDefaultLoggerInstance()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/application/stats/util/LogController;->sLogger:Lcom/audible/application/stats/util/ILogger;

    .line 36
    :cond_0
    sget-object v0, Lcom/audible/application/stats/util/LogController;->sLogger:Lcom/audible/application/stats/util/ILogger;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/application/stats/util/ILogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static newDefaultLoggerInstance()Lcom/audible/application/stats/util/ILogger;
    .locals 1

    .line 41
    new-instance v0, Lcom/audible/application/stats/util/DefaultLogger;

    invoke-direct {v0}, Lcom/audible/application/stats/util/DefaultLogger;-><init>()V

    return-object v0
.end method

.method public static pii(Ljava/lang/String;)V
    .locals 1

    .line 111
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/application/stats/util/ILogger;->pii(Ljava/lang/String;)V

    return-void
.end method

.method public static registerLoggerImplementation(Lcom/audible/application/stats/util/ILogger;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 25
    sput-object p0, Lcom/audible/application/stats/util/LogController;->sLogger:Lcom/audible/application/stats/util/ILogger;

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->newDefaultLoggerInstance()Lcom/audible/application/stats/util/ILogger;

    move-result-object p0

    sput-object p0, Lcom/audible/application/stats/util/LogController;->sLogger:Lcom/audible/application/stats/util/ILogger;

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/audible/application/stats/util/LogController;->getLogger()Lcom/audible/application/stats/util/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/application/stats/util/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method
