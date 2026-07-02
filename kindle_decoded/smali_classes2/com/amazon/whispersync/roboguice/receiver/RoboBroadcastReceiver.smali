.class public abstract Lcom/amazon/whispersync/roboguice/receiver/RoboBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoboBroadcastReceiver.java"


# instance fields
.field protected final namespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/receiver/RoboBroadcastReceiver;->namespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/receiver/RoboBroadcastReceiver;->namespace:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    .line 31
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/roboguice/receiver/RoboBroadcastReceiver;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
