.class final Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver$FTUEIntentFilter;
.super Landroid/content/IntentFilter;
.source "FTUEIntentBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/receiver/FTUEIntentBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FTUEIntentFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.amazon.kindle.tablet.ftue_free_for_all"

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
