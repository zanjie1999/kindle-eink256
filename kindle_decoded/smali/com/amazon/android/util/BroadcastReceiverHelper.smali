.class public interface abstract Lcom/amazon/android/util/BroadcastReceiverHelper;
.super Ljava/lang/Object;
.source "BroadcastReceiverHelper.java"


# virtual methods
.method public abstract registerBroadcastReceivers(Ljava/util/Collection;)V
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
.end method

.method public abstract setComponentEnabledSetting(Ljava/lang/Class;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation
.end method

.method public abstract unregisterBroadcastReceivers(Ljava/util/Collection;)V
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
.end method
