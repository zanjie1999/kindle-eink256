.class public final Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;
.super Ljava/lang/Object;
.source "FFSLogReceiverImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;


# instance fields
.field private final logTag:Ljava/lang/String;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 1

    const-string v0, "logTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method


# virtual methods
.method public ffsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stackTrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FFSPlugin] - FFS Error. Step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nStack trace:\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ffsNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FFSPlugin] - FFS Next step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ffsProvisioningCompleted()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;->logTag:Ljava/lang/String;

    const-string v2, "[FFSPlugin] - FFS Provisioning completed"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
