.class Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;
.super Ljava/lang/Object;
.source "HushpuppySyncIntegration.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1HushpuppySyncIntegrationLogger"
.end annotation


# instance fields
.field underlyingLogger:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration;Lcom/audible/hushpuppy/common/logging/ILogger;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;->underlyingLogger:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;->underlyingLogger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;->underlyingLogger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;->underlyingLogger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;->underlyingLogger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-void
.end method
