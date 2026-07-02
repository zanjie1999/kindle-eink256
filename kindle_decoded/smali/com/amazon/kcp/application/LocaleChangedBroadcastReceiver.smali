.class public final Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangedBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->Companion:Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$Companion;

    .line 39
    const-class v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LocaleChang\u2026castReceiver::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMessageQueue$cp()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/amazon/kcp/util/ServiceUtilsManager;->getInstance()Lcom/amazon/kcp/util/ServiceUtils;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/application/FTUEDummyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/amazon/kcp/util/ServiceUtils;->startServiceSafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance v0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$onReceive$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$onReceive$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
