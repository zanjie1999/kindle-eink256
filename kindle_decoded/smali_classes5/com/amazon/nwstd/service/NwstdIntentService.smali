.class public Lcom/amazon/nwstd/service/NwstdIntentService;
.super Landroid/app/IntentService;
.source "NwstdIntentService.java"


# static fields
.field private static final NWSTD_INTENT_SERVICE_NAME:Ljava/lang/String; = "NwstdIntentService"

.field private static TAG:Ljava/lang/String;

.field private static mIntentHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/nwstd/service/IIntentHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/nwstd/service/NwstdIntentService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/NwstdIntentService;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/service/NwstdIntentService;->mIntentHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "NwstdIntentService"

    .line 71
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static clearProviders()V
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/nwstd/service/NwstdIntentService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static contains(Lcom/amazon/nwstd/service/IIntentHandler;)Z
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/nwstd/service/NwstdIntentService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/nwstd/service/IIntentHandler;->getActionName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerIntentHandler(Lcom/amazon/nwstd/service/IIntentHandler;)Z
    .locals 2

    .line 30
    sget-object v0, Lcom/amazon/nwstd/service/NwstdIntentService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/nwstd/service/IIntentHandler;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 34
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/service/NwstdIntentService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/nwstd/service/IIntentHandler;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static unregisterIntentHandler(Lcom/amazon/nwstd/service/IIntentHandler;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 57
    sget-object v0, Lcom/amazon/nwstd/service/NwstdIntentService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/nwstd/service/IIntentHandler;->getActionName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    .line 54
    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 83
    sget-object p1, Lcom/amazon/nwstd/service/NwstdIntentService;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v1, "Received intent is null. Ignore this handleIntent call"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/amazon/nwstd/service/NwstdIntentService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/service/IIntentHandler;

    if-nez v1, :cond_1

    .line 89
    sget-object p1, Lcom/amazon/nwstd/service/NwstdIntentService;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such provider for action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Intent will be ignored."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 93
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/amazon/nwstd/service/IIntentHandler;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
