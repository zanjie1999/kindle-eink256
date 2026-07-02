.class public final Lcom/amazon/kindle/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static appName:Ljava/lang/String;

.field private static delegate:Lcom/amazon/kindle/log/ILogger;

.field private static releaseThreshold:Lcom/amazon/kindle/log/ILogger$Level;

.field private static threshold:Lcom/amazon/kindle/log/ILogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->TRACE:Lcom/amazon/kindle/log/ILogger$Level;

    sput-object v0, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    .line 29
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->INFO:Lcom/amazon/kindle/log/ILogger$Level;

    sput-object v0, Lcom/amazon/kindle/log/Log;->releaseThreshold:Lcom/amazon/kindle/log/ILogger$Level;

    const-string v0, "AmazonKindle"

    .line 33
    sput-object v0, Lcom/amazon/kindle/log/Log;->appName:Ljava/lang/String;

    return-void
.end method

.method public static error(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V
    .locals 1

    .line 398
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->ERROR:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 387
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->ERROR:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 566
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 429
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->FATAL:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThreshold()Lcom/amazon/kindle/log/ILogger$Level;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    return-object v0
.end method

.method public static info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V
    .locals 1

    .line 314
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->INFO:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 303
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->INFO:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initialize(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Lcom/amazon/kindle/log/ILogger;)V
    .locals 1

    .line 54
    sput-object p2, Lcom/amazon/kindle/log/Log;->delegate:Lcom/amazon/kindle/log/ILogger;

    .line 55
    sget-object p2, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result p2

    sget-object v0, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v0}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 56
    :cond_0
    sput-object p1, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    .line 58
    :cond_1
    sput-object p0, Lcom/amazon/kindle/log/Log;->appName:Ljava/lang/String;

    return-void
.end method

.method public static isDebugLogEnabled()Z
    .locals 2

    .line 86
    sget-object v0, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v0}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->DEBUG:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInfoLogEnabled()Z
    .locals 2

    .line 95
    sget-object v0, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v0}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kindle/log/ILogger$Level;->INFO:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/log/ILazy;->evaluate()Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 135
    invoke-virtual {p1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kindle/log/Log;->releaseThreshold:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-virtual {v1}, Lcom/amazon/kindle/log/ILogger$Level;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    const-string p0, ""

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/log/Log;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    sget-object p2, Lcom/amazon/kindle/log/Log;->delegate:Lcom/amazon/kindle/log/ILogger;

    if-nez p2, :cond_3

    const/16 p2, 0x3a

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ") "

    invoke-virtual {p0, v1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x28

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 155
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 157
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, p1, v0, p3}, Lcom/amazon/kindle/log/ILogger;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static setLogLevel(Lcom/amazon/kindle/log/ILogger$Level;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 63
    sput-object p0, Lcom/amazon/kindle/log/Log;->threshold:Lcom/amazon/kindle/log/ILogger$Level;

    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/log/Log;->trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V
    .locals 1

    .line 221
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->TRACE:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 208
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->TRACE:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V
    .locals 1

    .line 356
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->WARNING:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Lcom/amazon/kindle/log/ILazy;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 324
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 345
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->WARNING:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 554
    invoke-static {p0, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 501
    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 522
    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->WTF:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kindle/log/Log;->log(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
