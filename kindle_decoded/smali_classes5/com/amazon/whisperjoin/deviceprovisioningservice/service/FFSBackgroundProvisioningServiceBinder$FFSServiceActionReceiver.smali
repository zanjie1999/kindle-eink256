.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FFSBackgroundProvisioningServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FFSServiceActionReceiver"
.end annotation


# instance fields
.field private final mBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 354
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 359
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FFSServiceActionReceiver onReceive"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 368
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x4a1edecc    # 2602931.0f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x6e82a216

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.StopFFS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.FFSServiceAction.StartFFS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    .line 382
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid onReceive parameters, ABORTING! Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    :cond_5
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {p1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Z)Z

    goto :goto_1

    .line 370
    :cond_6
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 371
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder$FFSServiceActionReceiver;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Z)Z

    goto :goto_1

    .line 373
    :cond_7
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not starting FFS since ProvisioningServiceConfiguration was null"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
