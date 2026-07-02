.class public final Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;
.super Ljava/lang/Object;
.source "ATMDebugBroadcastReceiver.kt"


# static fields
.field private static final ACTION_DISABLE_UTM:Ljava/lang/String; = "com.amazon.kcp.debug.action.DISABLE_UTM"

.field private static final ACTION_ENABLE_UTM:Ljava/lang/String; = "com.amazon.kcp.debug.action.ENABLE_UTM"

.field private static final ACTION_LOAD_TUTORIAL_CONFIG:Ljava/lang/String; = "com.amazon.kcp.debug.action.LOAD_TUTORIAL_CONFIG"

.field private static final ACTION_RELOAD_TUTORIAL_CONFIG:Ljava/lang/String; = "com.amazon.kcp.debug.action.RELOAD_TUTORIAL_CONFIG"

.field private static final ACTION_RESET_DISPLAY_COUNT:Ljava/lang/String; = "com.amazon.kcp.debug.action.RESET_TUTORIAL_DISPLAY_COUNT"

.field private static final ACTION_RESET_READER_COUNTERS:Ljava/lang/String; = "com.amazon.kcp.debug.action.RESET_READER_COUNTERS"

.field private static final ACTION_SHOW_TUTORIAL:Ljava/lang/String; = "com.amazon.kcp.debug.action.SHOW_TUTORIAL"

.field private static final EXTRA_CONFIG_PATH:Ljava/lang/String; = "com.amazon.kcp.debug.extra.CONFIG_PATH"

.field private static final EXTRA_TUTORIAL_ID:Ljava/lang/String; = "com.amazon.kcp.debug.extra.TUTORIAL_ID"

.field private static final TAG:Ljava/lang/String;

.field private static final TUTORIAL_ID_ALL:Ljava/lang/String; = "all"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ATMDebugBro\u2026castReceiver::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/tutorial/ATMDebugBroadcastReceiverKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
