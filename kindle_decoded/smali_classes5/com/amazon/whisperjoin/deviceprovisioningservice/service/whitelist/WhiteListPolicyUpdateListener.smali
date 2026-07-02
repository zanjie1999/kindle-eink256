.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;
.super Ljava/lang/Object;
.source "WhiteListPolicyUpdateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WhiteListPolicyUpdateListener"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPolicyUpdateReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

.field private final mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-void
.end method


# virtual methods
.method public registerForWhiteListPolicyUpdates(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;)V
    .locals 4

    .line 44
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForWhiteListPolicyUpdates"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mPolicyUpdateReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->TAG:Ljava/lang/String;

    const-string v1, "Other callback already registered, replacing with new callback"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->unregisterForWhiteListPolicyUpdates()V

    .line 50
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mPolicyUpdateReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

    .line 51
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.amazon.whisperjoin.deviceprovisioningservice.WHITE_LIST_POLICY_UPDATE_ACTION"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mPolicyUpdateReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

    const/4 v2, 0x0

    const-string v3, "com.amazon.whisperjoin.deviceprovisioningservice.WhiteListPolicyUpdate.Permission"

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterForWhiteListPolicyUpdates()V
    .locals 2

    .line 56
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForWhiteListPolicyUpdates"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mPolicyUpdateReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;->mPolicyUpdateReceiver:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$PolicyUpdateReceiver;

    return-void
.end method
