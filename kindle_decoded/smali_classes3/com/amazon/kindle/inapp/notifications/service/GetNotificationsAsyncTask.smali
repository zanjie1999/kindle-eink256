.class public abstract Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;
.super Landroid/os/AsyncTask;
.source "GetNotificationsAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
        ">;",
        "Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetNotificationsAsyncTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetNotificationsAsyncTask.kt\ncom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n616#2:95\n705#2,2:96\n*E\n*S KotlinDebug\n*F\n+ 1 GetNotificationsAsyncTask.kt\ncom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask\n*L\n70#1:95\n70#1,2:96\n*E\n"
.end annotation


# static fields
.field private static final INVALID_NOTIFICATION_DATA_METRIC:Ljava/lang/String; = "InvalidNotificationData"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final gson:Lcom/google/gson/Gson;

.field private final pageToken:Ljava/lang/String;

.field private final queue:Lcom/android/volley/RequestQueue;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->queue:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->pageToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->gson:Lcom/google/gson/Gson;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->TAG:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 30
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/google/gson/Gson;)V

    return-void
.end method

.method private final filterNotification(Lcom/amazon/kindle/inapp/notifications/util/Notification;)Z
    .locals 8

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2, v3}, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;-><init>(Lcom/amazon/kindle/inapp/notifications/util/Notification;Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationValidator;->isDisplayable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Notification with id:%s could not be validated"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    .line 82
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v2

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_OPERATION()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getIAN_NOTIFICATION_FILTERED()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportInAppNotificationFiltered(Lcom/amazon/kindle/inapp/notifications/util/Notification;)V

    :cond_0
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;
    .locals 14

    const-string v0, "TAG"

    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1, v2}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v1

    .line 39
    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->queue:Lcom/android/volley/RequestQueue;

    new-instance v5, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;

    iget-object v6, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v6

    const-string v7, "sdk.applicationManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v6

    const-string v7, "sdk.applicationManager.deviceInformation"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "getNotificationsFuture"

    .line 40
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->pageToken:Ljava/lang/String;

    .line 39
    invoke-direct {v5, v6, v1, v7}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const-wide/16 v4, 0xa

    .line 44
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;

    if-nez v1, :cond_0

    .line 46
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notification response is null"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 49
    :cond_0
    sget-object v4, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v5, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next page token is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;->getNextPage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;->getNotifications()Ljava/util/List;

    move-result-object p1

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    .line 60
    :try_start_1
    iget-object v7, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getData()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    .line 61
    invoke-virtual {v6, v7}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->setNotificationData(Lcom/amazon/kindle/inapp/notifications/util/NotificationData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    sget-object v7, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v8, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v9, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Notification data blob for Notification ID:%s could not be parsed"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.lang.String.format(format, *args)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v7, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v7}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v8

    sget-object v7, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v7}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_OPERATION()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v10, "InvalidNotificationData"

    invoke-static/range {v8 .. v13}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 65
    invoke-virtual {v6, v2}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->setNotificationData(Lcom/amazon/kindle/inapp/notifications/util/NotificationData;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    .line 70
    invoke-direct {p0, v3}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->filterNotification(Lcom/amazon/kindle/inapp/notifications/util/Notification;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_3
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;->getNextPage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v4, v0, v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object p1

    .line 56
    :cond_4
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsRequest$GetNotificationsResponse;->getNextPage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v4, v0, v1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception v1

    .line 51
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get InApp notifications, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_OPERATION()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getGET_NOTIFICATIONS_FAILURE()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/service/GetNotificationsResult;

    move-result-object p1

    return-object p1
.end method
