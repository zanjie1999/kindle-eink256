.class public Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;
.super Landroid/content/BroadcastReceiver;
.source "ServicePersistenceHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_STAY_ALIVE:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.action.STAY_ALIVE"

.field private static final PERMISSION:Ljava/lang/String; = "com.amazon.whispersync.dcp.permission.USE_PERSISTENCE_HELPER"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;

    .line 22
    const-class v0, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createStayAliveIntent()Landroid/content/Intent;
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.whispersync.dcp.framework.action.STAY_ALIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private sendStayAliveBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "com.amazon.whispersync.dcp.permission.USE_PERSISTENCE_HELPER"

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private wakeUpAllPersistentServices(Landroid/content/Context;)V
    .locals 2

    .line 39
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->TAG:Ljava/lang/String;

    const-string v1, "Waking up all persistent services."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->createStayAliveIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->sendStayAliveBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private wakeUpPersistentServicesForPackage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 48
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Skipping %s because is has no associated data."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->createStayAliveIntent()Landroid/content/Intent;

    move-result-object p2

    .line 55
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v3, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Waking up persistent services in package %s."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->sendStayAliveBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->wakeUpAllPersistentServices(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ServicePersistenceHelper;->wakeUpPersistentServicesForPackage(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
