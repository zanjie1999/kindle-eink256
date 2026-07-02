.class public final Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/ShutdownBroadcastReceiver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/application/ShutdownBroadcastReceiver$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;->Companion:Lcom/amazon/kcp/application/ShutdownBroadcastReceiver$Companion;

    .line 24
    const-class v0, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ShutdownBro\u2026castReceiver::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "System shutdown or reboot"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/amazon/kcp/application/ShutdownBroadcastReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p2, Lcom/amazon/kcp/application/SystemShutdownEvent;

    invoke-direct {p2}, Lcom/amazon/kcp/application/SystemShutdownEvent;-><init>()V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
