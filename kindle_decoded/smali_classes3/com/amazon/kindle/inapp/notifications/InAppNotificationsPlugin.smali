.class public Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;
.super Ljava/lang/Object;
.source "InAppNotificationsPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0x15
    name = "InAppNotificationsPlugin"
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

# The value of this static final field might be set in the static constructor
.field private static final NUM_REQUEST_QUEUE_THREADS:I = 0x1

.field private static mainActivity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

.field private static requestQueue:Lcom/android/volley/RequestQueue;

.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private static weblabGateKeeper:Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    const/4 v0, 0x1

    .line 82
    sput v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->NUM_REQUEST_QUEUE_THREADS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMainActivity$cp()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->mainActivity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    return-object v0
.end method

.method public static final synthetic access$getNUM_REQUEST_QUEUE_THREADS$cp()I
    .locals 1

    .line 34
    sget v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->NUM_REQUEST_QUEUE_THREADS:I

    return v0
.end method

.method public static final synthetic access$getRequestQueue$cp()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public static final synthetic access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public static final synthetic access$setMainActivity$cp(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->mainActivity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    return-void
.end method

.method public static final synthetic access$setRequestQueue$cp(Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->requestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static final synthetic access$setSdk$cp(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static final synthetic access$setWeblabGateKeeper$cp(Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->weblabGateKeeper:Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;

    return-void
.end method


# virtual methods
.method public classFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;-><init>()V

    return-object v0
.end method

.method public getDependecies()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDependecies()Ljava/util/Collection;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->getDependecies()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 4

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-static {v0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->access$setSdk$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 39
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->register()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;

    .line 40
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    const-string v2, "sdk.logger"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 42
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$initialize$1;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$initialize$1;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 45
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->classFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->initializeClassFactory(Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;)V
    :try_end_0
    .catch Lcom/amazon/kindle/inapp/notifications/platform/ClassFactoryAlreadyInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->getFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;->getWeblabGateKeeper()Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->access$setWeblabGateKeeper$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;)V

    .line 52
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "sdk.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->access$setRequestQueue$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;Lcom/android/volley/RequestQueue;)V

    .line 53
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->Companion:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriberImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriberImpl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->subscribe(Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;)V

    return-void
.end method

.method public final onPushNotificationOpenedEvent(Lcom/amazon/kindle/krx/events/PushNotificationOpenedEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p1, p1, Lcom/amazon/kindle/krx/events/PushNotificationOpenedEvent;->notificationId:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    const-string v1, "RequestFuture.newFuture()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-static {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->access$getRequestQueue$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/amazon/kindle/inapp/notifications/service/MarkNotNewRequest;

    sget-object v3, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    const-string v4, "sdk!!.applicationManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v3

    const-string v4, "sdk!!.applicationManager.deviceInformation"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/amazon/kindle/inapp/notifications/service/MarkNotNewRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
