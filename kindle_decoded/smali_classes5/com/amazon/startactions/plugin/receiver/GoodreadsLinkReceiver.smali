.class public Lcom/amazon/startactions/plugin/receiver/GoodreadsLinkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GoodreadsLinkReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/startactions/plugin/receiver/GoodreadsLinkReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/plugin/receiver/GoodreadsLinkReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 29
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    sget-object p1, Lcom/amazon/startactions/plugin/receiver/GoodreadsLinkReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link intent received [action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez p1, :cond_1

    .line 35
    sget-object p1, Lcom/amazon/startactions/plugin/receiver/GoodreadsLinkReceiver;->TAG:Ljava/lang/String;

    const-string p2, "EndActionsPlugin\'s SDK has not been initialized; can\'t handle the event"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->forceUpdate()V

    .line 41
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->clearLocalState()V

    return-void
.end method
