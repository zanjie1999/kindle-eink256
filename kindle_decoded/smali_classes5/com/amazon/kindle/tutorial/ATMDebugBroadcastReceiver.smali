.class final Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ATMDebugBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nATMDebugBroadcastReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ATMDebugBroadcastReceiver.kt\ncom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"
.end annotation


# instance fields
.field private final tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V
    .locals 1

    const-string/jumbo v0, "tutorialManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    return-void
.end method

.method private final loadTutorialConfiguration(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 153
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/ConfigReader;->read(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->loadConfiguration(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 157
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to load configurations from file."

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private final reloadTutorialConfiguration(Landroid/content/Context;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->loadConfigurationFromContext(Landroid/content/Context;)V

    return-void
.end method

.method private final resetDisplayCount(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 136
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    const-string v1, "all"

    .line 137
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->resetAllDisplayCount()V

    goto :goto_2

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->resetDisplayCount(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot reset tutorial display count - provided id was null/empty."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private final resetReaderCounters()V
    .locals 1

    .line 172
    sget-object v0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->provider:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->resetAllCounters()V

    :cond_0
    return-void
.end method

.method private final showTutorial(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 124
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->tutorialManager:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->showTutorialById(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot show tutorial - provided id was null/empty."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "Missing require extra: com.amazon.kcp.debug.extra.TUTORIAL_ID"

    const-string v3, "com.amazon.kcp.debug.extra.TUTORIAL_ID"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "com.amazon.kcp.debug.action.LOAD_TUTORIAL_CONFIG"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "com.amazon.kcp.debug.extra.CONFIG_PATH"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string/jumbo p2, "this"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->loadTutorialConfiguration(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 92
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Missing required extra: com.amazon.kcp.debug.extra.CONFIG_PATH"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "com.amazon.kcp.debug.action.DISABLE_UTM"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    .line 106
    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setUtmEnabled(Landroid/content/Context;Z)V

    .line 107
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTM Disabled"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "com.amazon.kcp.debug.action.RELOAD_TUTORIAL_CONFIG"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Reloading tutorial config"

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->reloadTutorialConfiguration(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "com.amazon.kcp.debug.action.RESET_READER_COUNTERS"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 111
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->resetReaderCounters()V

    .line 112
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Reader counters reset"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "com.amazon.kcp.debug.action.SHOW_TUTORIAL"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->showTutorial(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    const-string v1, "com.amazon.kcp.debug.action.RESET_TUTORIAL_DISPLAY_COUNT"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->resetDisplayCount(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;->reloadTutorialConfiguration(Landroid/content/Context;)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    const-string v1, "com.amazon.kcp.debug.action.ENABLE_UTM"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x1

    .line 101
    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setUtmEnabled(Landroid/content/Context;Z)V

    .line 102
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTM Enabled"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_4
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x758e9284 -> :sswitch_6
        -0x30b1dcd5 -> :sswitch_5
        -0x2a74068a -> :sswitch_4
        0x1b5823f9 -> :sswitch_3
        0x1c5b9247 -> :sswitch_2
        0x67e0c42d -> :sswitch_1
        0x746d0214 -> :sswitch_0
    .end sparse-switch
.end method
