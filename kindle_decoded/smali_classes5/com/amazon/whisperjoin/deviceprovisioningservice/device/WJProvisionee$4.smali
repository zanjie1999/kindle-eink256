.class Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$4;
.super Ljava/lang/Object;
.source "WJProvisionee.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->startProvisioning()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperbridge/ProvisioningStatus;",
        "Lio/reactivex/Completable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperbridge/ProvisioningStatus;)Lio/reactivex/Completable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ProvisioningStatus;->isProvisioner()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningNotGranted;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningNotGranted;-><init>()V

    invoke-static {p1}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    check-cast p1, Lcom/amazon/whisperbridge/ProvisioningStatus;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$4;->apply(Lcom/amazon/whisperbridge/ProvisioningStatus;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
