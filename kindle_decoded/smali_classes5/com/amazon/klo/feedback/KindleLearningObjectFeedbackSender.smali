.class public Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;
.super Ljava/lang/Object;
.source "KindleLearningObjectFeedbackSender.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final ODOT_FIELD_ASIN:Ljava/lang/String; = "asin"

.field private static final ODOT_FIELD_COMMENT:Ljava/lang/String; = "comment"

.field private static final ODOT_FIELD_COMMENT_STATUS:Ljava/lang/String; = "commentStatus"

.field private static final ODOT_FIELD_EMBEDDED_ID:Ljava/lang/String; = "embeddedId"

.field private static final ODOT_FIELD_IS_HELFUL:Ljava/lang/String; = "isHelpful"

.field private static final ODOT_FIELD_TERM:Ljava/lang/String; = "term"

.field private static final ODOT_FIELD_VERSION:Ljava/lang/String; = "appVersion"

.field private static final ODOT_FIRLD_DEVICE_TIMESTAMP:Ljava/lang/String; = "deviceTimestamp"

.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.feedback.KindleLearningObjectFeedbackSender"

.field private static final TIME_ZONE:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPayload(Ljava/lang/String;ZILjava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    .line 58
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    .line 64
    :try_start_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 68
    sget-object v3, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;->TAG:Ljava/lang/String;

    const-string v4, "Not able to find app package name, failed to get app version "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v2, 0x0

    .line 71
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v5, "UTC"

    .line 72
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 75
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz v1, :cond_0

    :try_start_1
    const-string v6, "asin"

    .line 80
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    const-string v1, "embeddedId"

    .line 84
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "appVersion"

    .line 86
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "deviceTimestamp"

    .line 87
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "term"

    .line 88
    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isHelpful"

    .line 89
    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "commentStatus"

    .line 90
    invoke-virtual {v5, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "comment"

    .line 91
    invoke-virtual {v5, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    .line 97
    :goto_2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Internal problem trying to generate JSON"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public sendFeedback(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v1

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;->getPayload(Ljava/lang/String;ZILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;

    invoke-direct {p2, v1, p1}, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;-><init>(Lcom/amazon/kindle/krx/messaging/IMessagingManager;Lorg/json/JSONObject;)V

    .line 51
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    .line 53
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    return-void
.end method
