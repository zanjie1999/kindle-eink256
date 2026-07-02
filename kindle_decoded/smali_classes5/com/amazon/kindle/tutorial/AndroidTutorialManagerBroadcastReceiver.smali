.class public final Lcom/amazon/kindle/tutorial/AndroidTutorialManagerBroadcastReceiver;
.super Ljava/lang/Object;
.source "ATMDebugBroadcastReceiver.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManagerBroadcastReceiver;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManagerBroadcastReceiver;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerDebugBroadcastReceiver(Landroid/content/Context;Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V
    .locals 2

    const-string/jumbo v0, "tutorialManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 47
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.amazon.kcp.debug.action.SHOW_TUTORIAL"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.debug.action.RESET_TUTORIAL_DISPLAY_COUNT"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.debug.action.LOAD_TUTORIAL_CONFIG"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.debug.action.RELOAD_TUTORIAL_CONFIG"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.debug.action.ENABLE_UTM"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.debug.action.DISABLE_UTM"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.debug.action.RESET_READER_COUNTERS"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
