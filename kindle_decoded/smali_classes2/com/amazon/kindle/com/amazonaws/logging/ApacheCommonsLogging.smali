.class public Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;
.super Ljava/lang/Object;
.source "ApacheCommonsLogging.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private log:Lorg/apache/commons/logging/Log;

.field private logClass:Ljava/lang/Class;

.field private logString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->logString:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/ApacheCommonsLogging;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
