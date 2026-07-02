.class public Lcom/audible/application/stats/receivers/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/audible/application/stats/integration/StatsApplication;

    .line 22
    invoke-interface {p1}, Lcom/audible/application/stats/integration/StatsApplication;->getStats()Lcom/audible/application/stats/StatsService;

    move-result-object p1

    check-cast p1, Lcom/audible/application/stats/StatsManager;

    invoke-virtual {p1}, Lcom/audible/application/stats/StatsManager;->updateCurrentListeningEventTime()V

    return-void
.end method
