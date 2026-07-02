.class final Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UGSTimeout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->startTimeout(JLcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

.field final synthetic $timeout:J


# direct methods
.method constructor <init>(JLcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 0

    iput-wide p1, p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;->$timeout:J

    iput-object p3, p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;->$device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 59
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;->$timeout:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->access$getLogger$cp()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout ended after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;->$timeout:J

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "s. Finishing UGS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion$startTimeout$1;->$device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-static {v0, v1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->access$triggerTimeoutAction(Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 63
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/utils/UGSTimeoutKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary timeout has been cancelled"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
