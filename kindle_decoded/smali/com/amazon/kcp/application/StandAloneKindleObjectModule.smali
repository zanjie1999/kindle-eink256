.class public final Lcom/amazon/kcp/application/StandAloneKindleObjectModule;
.super Ljava/lang/Object;
.source "StandAloneKindleObjectModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getReaderNotificationsManager(Landroid/content/Context;Lcom/amazon/kindle/krx/KindleReaderSDK;)Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kindleReaderSDK"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 39
    invoke-static {}, Lcom/amazon/kcp/application/StandAloneKindleObjectModuleKt;->access$getPLAY_SERVICE_SUCCESS_CODES$p()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "StandAloneKindleObjectModule"

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    const-string v2, "Play Services Found. Using Play Services Notifications."

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/amazon/kcp/application/NotificationManagerWrapper;

    new-instance v1, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;

    invoke-direct {v1, p1, p2}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerImpl;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/NotificationManagerWrapper;-><init>(Lcom/amazon/reader/notifications/ReaderNotificationsManager;)V

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    .line 46
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    const-string v2, "ADM Found. Using ADM Notifications"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/amazon/kcp/application/NotificationManagerWrapper;

    new-instance v1, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;

    invoke-direct {v1, p1, p2}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsManagerFPT;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/NotificationManagerWrapper;-><init>(Lcom/amazon/reader/notifications/ReaderNotificationsManager;)V

    return-object v0

    .line 56
    :cond_1
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    const-string p2, "Defaulting to no-op."

    invoke-virtual {p1, v1, p2}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p1, Lcom/amazon/kcp/application/NotificationManagerWrapper;

    new-instance p2, Lcom/amazon/kcp/notifications/ReaderNotificationsManagerNoop;

    invoke-direct {p2}, Lcom/amazon/kcp/notifications/ReaderNotificationsManagerNoop;-><init>()V

    invoke-direct {p1, p2}, Lcom/amazon/kcp/application/NotificationManagerWrapper;-><init>(Lcom/amazon/reader/notifications/ReaderNotificationsManager;)V

    return-object p1
.end method
