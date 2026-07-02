.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;
.super Ljava/lang/Object;
.source "InAppNotificationsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/startup/IStartupListener;",
        "Lcom/amazon/kindle/krx/startup/StartupType;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final listener:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 12
    const-class p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->TAG:Ljava/lang/String;

    .line 13
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->listener:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;

    .line 15
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->listener:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->get(Lcom/amazon/kindle/krx/startup/StartupType;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/startup/StartupType;)Ljava/lang/Void;
    .locals 1

    const-string v0, "startupType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/startup/StartupType;)I
    .locals 1

    const-string v0, "startupType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x63

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->getPriority(Lcom/amazon/kindle/krx/startup/StartupType;)I

    move-result p1

    return p1
.end method

.method public final register()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerStartupProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    return-object p0
.end method
