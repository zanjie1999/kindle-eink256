.class public Lcom/amazon/kcp/notifications/NotificationEventsManager;
.super Ljava/lang/Object;
.source "NotificationEventsManager.java"


# static fields
.field private static instance:Lcom/amazon/kcp/notifications/NotificationEventsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/notifications/NotificationEventsManager;
    .locals 2

    const-class v0, Lcom/amazon/kcp/notifications/NotificationEventsManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/notifications/NotificationEventsManager;->instance:Lcom/amazon/kcp/notifications/NotificationEventsManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/amazon/kcp/notifications/NotificationEventsManager;

    invoke-direct {v1}, Lcom/amazon/kcp/notifications/NotificationEventsManager;-><init>()V

    sput-object v1, Lcom/amazon/kcp/notifications/NotificationEventsManager;->instance:Lcom/amazon/kcp/notifications/NotificationEventsManager;

    .line 27
    :cond_0
    sget-object v1, Lcom/amazon/kcp/notifications/NotificationEventsManager;->instance:Lcom/amazon/kcp/notifications/NotificationEventsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public configureRegistrationEvents()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 49
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderNotificationsManager()Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Lcom/amazon/reader/notifications/ReaderNotificationsManager;->clearChannelSettings()V

    .line 55
    invoke-static {v0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->updateNotificationsChannelsFile(Landroid/content/Context;)V

    .line 56
    invoke-static {v0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->register(Landroid/content/Context;)V

    .line 66
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearAllNotifications()V

    :cond_2
    return-void
.end method
