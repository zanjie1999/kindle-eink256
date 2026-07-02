.class public abstract Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;
.super Landroid/os/AsyncTask;
.source "GetNotificationCountAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    const-string v0, "TAG"

    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object p1

    .line 19
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sdk.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    const-string v4, "sdk.applicationManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v3

    const-string v4, "sdk.applicationManager.deviceInformation"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "getCountFuture"

    .line 21
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {v2, v3, p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const-wide/16 v1, 0xa

    .line 24
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 27
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Notification Count Response null"

    invoke-virtual {p1, v2, v3}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountRequest$GetNotificationCountResponse;->getCount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 34
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Failed to make Notification Count Request"

    invoke-virtual {v1, v2, v0, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/service/GetNotificationCountAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
