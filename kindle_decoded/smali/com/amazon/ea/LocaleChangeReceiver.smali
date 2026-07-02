.class public Lcom/amazon/ea/LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangeReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/ea/LocaleChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/LocaleChangeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 18
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    sget-object p1, Lcom/amazon/ea/LocaleChangeReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Received Local change event"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->reprocessSidecar()V

    return-void
.end method
