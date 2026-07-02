.class public final Lcom/audible/application/stats/receivers/LanguageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LanguageChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 11
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/audible/application/stats/services/LanguageChangeService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
