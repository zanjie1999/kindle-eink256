.class public Lcom/amazon/kindle/DoFTUEReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DoFTUEReceiver.java"


# static fields
.field public static final PHASE_TWO_FTUE_BROADCAST_RECEIVED:Ljava/lang/String; = "phase_two_ftue_broadcast_received"

.field private static final START_FTUE_SYNC_PHASE_TWO:Ljava/lang/String; = "/kindle_all"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/DoFTUEReceiver;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/DoFTUEReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static startFtue(Landroid/content/Context;)V
    .locals 3

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.amazon.kindle.action.FTUE"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/amazon/kcp/service/BackendInteractionService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    invoke-static {}, Lcom/amazon/kcp/util/ServiceUtilsManager;->getInstance()Lcom/amazon/kcp/util/ServiceUtils;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/amazon/kcp/util/ServiceUtils;->startServiceSafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FTUE_ADD_ACCOUNT_TO_CMS_FTUE_NOTIFICATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    sget-object v0, Lcom/amazon/kindle/DoFTUEReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/kindle_all"

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phase_two_ftue_broadcast_received"

    invoke-interface {p2, v1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/DoFTUEReceiver;->startFtue(Landroid/content/Context;)V

    return-void
.end method
