.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RefreshCredentialsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCredSyncJobScheduler:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobSchedulerImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobScheduler;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobScheduler;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;->mCredSyncJobScheduler:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobScheduler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "Intent cannot be null"

    .line 32
    invoke-static {p2, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Context cannot be null"

    .line 33
    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.whisperjoin.provisioner.zigbee.REFRESH_CREDENTIALS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Invalid onReceive parameters, ABORTING!"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/RefreshCredentialsReceiver;->mCredSyncJobScheduler:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobScheduler;

    const-string v0, "DSHS"

    invoke-interface {p2, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/CredSyncJobScheduler;->scheduleCredSyncRun(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
