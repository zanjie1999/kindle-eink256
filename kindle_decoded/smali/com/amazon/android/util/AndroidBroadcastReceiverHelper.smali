.class public Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;
.super Ljava/lang/Object;
.source "AndroidBroadcastReceiverHelper.java"

# interfaces
.implements Lcom/amazon/android/util/BroadcastReceiverHelper;


# instance fields
.field private final context:Landroid/content/Context;

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;->context:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public registerBroadcastReceivers(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/content/IntentFilter;",
            "Landroid/content/BroadcastReceiver;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 31
    iget-object v1, p0, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;->context:Landroid/content/Context;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/BroadcastReceiver;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setComponentEnabledSetting(Ljava/lang/Class;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    iget-object p1, p0, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public unregisterBroadcastReceivers(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/content/IntentFilter;",
            "Landroid/content/BroadcastReceiver;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 37
    iget-object v1, p0, Lcom/amazon/android/util/AndroidBroadcastReceiverHelper;->context:Landroid/content/Context;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    return-void
.end method
