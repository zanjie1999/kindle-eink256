.class public Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;
.super Ljava/lang/Object;
.source "AccountChangeListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.plugin.receiver.AccountChangeListener"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;->TAG:Ljava/lang/String;

    const-string v1, "Initialized"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 29
    sget-object v0, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KRX Authentication event received.  [type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    .line 33
    sget-object p1, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;->TAG:Ljava/lang/String;

    const-string v0, "EndActionsPlugin\'s SDK has not been initialized; can\'t handle the event"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener$1;-><init>(Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_2

    .line 54
    invoke-static {}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->clearPreferences()V

    .line 55
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/PurchaseManager;->clear()V

    :cond_2
    return-void
.end method
