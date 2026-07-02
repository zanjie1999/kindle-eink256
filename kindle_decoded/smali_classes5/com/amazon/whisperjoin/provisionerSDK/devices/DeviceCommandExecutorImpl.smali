.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;
.super Ljava/lang/Object;
.source "DeviceCommandExecutorImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceCommandExecutorImpl"


# instance fields
.field private final mRadioHandle:Ljava/lang/Object;

.field private final mTransport:Lcom/amazon/whisperbridge/Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperbridge/Transport;Ljava/lang/Object;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    .line 25
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;->mRadioHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    :try_start_0
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;->mRadioHandle:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;->mRadioHandle:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/whisperbridge/Transport;->sendCommand(Ljava/lang/Object;Lcom/amazon/whisperbridge/constants/Command;[B)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 32
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_1

    .line 33
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    .line 34
    :cond_1
    :goto_0
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;->TAG:Ljava/lang/String;

    const-string v0, "Result is null, just returning empty buffer"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p2

    .line 42
    invoke-static {p2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;

    if-eqz v0, :cond_2

    move-object p2, v0

    :cond_2
    invoke-direct {v1, p2, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;-><init>(Ljava/lang/Throwable;Lcom/amazon/whisperbridge/constants/Command;)V

    throw v1
.end method
