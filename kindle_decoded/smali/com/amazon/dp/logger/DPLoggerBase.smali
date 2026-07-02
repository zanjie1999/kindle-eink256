.class public abstract Lcom/amazon/dp/logger/DPLoggerBase;
.super Ljava/lang/Object;
.source "DPLoggerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Lcom/amazon/dp/logger/DPFormattedMessage;)V
    .locals 1

    .line 271
    invoke-virtual {p0, p1}, Lcom/amazon/dp/logger/DPLoggerBase;->isEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->log(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Lcom/amazon/dp/logger/DPFormattedMessage;)V

    :cond_0
    return-void
.end method

.method private varargs logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 261
    new-instance v0, Lcom/amazon/dp/logger/DPFormattedMessage;

    invoke-direct {v0, p2, p3, p4}, Lcom/amazon/dp/logger/DPFormattedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Lcom/amazon/dp/logger/DPFormattedMessage;)V

    return-void
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 203
    sget-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->DEBUG:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 146
    sget-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->ERROR:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs fatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 127
    sget-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->FATAL:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 184
    sget-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->INFO:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract isEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;)Z
.end method

.method protected abstract log(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Lcom/amazon/dp/logger/DPFormattedMessage;)V
.end method

.method public varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 241
    sget-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->VERBOSE:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 165
    sget-object v0, Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;->WARN:Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->logIfEnabled(Lcom/amazon/dp/logger/DPLoggerBase$DPLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
