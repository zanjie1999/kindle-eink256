.class public final Lcom/audible/hushpuppy/common/logging/KrxLogWriter;
.super Ljava/lang/Object;
.source "KrxLogWriter.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/logging/ILogWriter;


# instance fields
.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kindleReaderSdk can\'t be null."

    .line 28
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    const-string v0, "logger can\'t be null."

    .line 31
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmazonKindle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/KrxLogWriter;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
