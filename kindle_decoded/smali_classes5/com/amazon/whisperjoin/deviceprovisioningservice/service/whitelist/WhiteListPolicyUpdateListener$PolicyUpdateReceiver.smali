.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WhiteListPolicyUpdateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolicyUpdateReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

.field private final mWhiteListPolicyUpdateCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 75
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->mWhiteListPolicyUpdateCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->mWhiteListPolicyUpdateCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.whisperjoin.deviceprovisioningservice.WHITE_LIST_POLICY_UPDATE_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received incorrect intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->readFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object p2

    .line 90
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->readFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object p1

    if-nez p2, :cond_2

    .line 93
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Received null WhiteListPolicy. Ignoring update."

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 98
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Received null provisionerClientData. Ignoring Update"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string p2, "WhiteListPolicy\'s client data doesn\'t match current client data"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;->mWhiteListPolicyUpdateCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;

    invoke-interface {v0, p2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;->onUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-void
.end method
