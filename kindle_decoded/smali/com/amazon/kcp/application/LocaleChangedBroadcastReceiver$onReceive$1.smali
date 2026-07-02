.class final Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$onReceive$1;
.super Ljava/lang/Object;
.source "LocaleChangedBroadcastReceiver.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$onReceive$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 24
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 25
    invoke-static {}, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received locale change intent"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver$onReceive$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/locale/ILocaleManager;->refreshLocaleSettings()V

    .line 31
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v0

    const-string v1, "factory.localeManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed locale to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/amazon/kcp/application/LocaleChangedBroadcastReceiver;->access$getMessageQueue$cp()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/event/LocaleChangedEvent;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/event/LocaleChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
