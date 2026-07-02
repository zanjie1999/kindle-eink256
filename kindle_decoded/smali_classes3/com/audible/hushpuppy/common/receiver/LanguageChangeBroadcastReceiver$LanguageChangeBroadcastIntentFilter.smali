.class final Lcom/audible/hushpuppy/common/receiver/LanguageChangeBroadcastReceiver$LanguageChangeBroadcastIntentFilter;
.super Landroid/content/IntentFilter;
.source "LanguageChangeBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/receiver/LanguageChangeBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LanguageChangeBroadcastIntentFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
