.class public Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;
.super Landroid/os/AsyncTask;
.source "GetDeviceConfigurationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://kca.amazon.com"

.field private static final DEVICE_CONFIGURATION_PATH:Ljava/lang/String; = "/kca/customer/device_configuration"

.field private static final HTTP_CONNECTION_TIMEOUT:I = 0x1388

.field private static final HTTP_SOCKET_TIMEOUT:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "com.amazon.ras.uservalidation.GetDeviceConfigurationAsyncTask"


# instance fields
.field private final adp:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

.field private final deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

.field private endpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->adp:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    const-string p1, "https://kca.amazon.com/kca/customer/device_configuration"

    .line 55
    iput-object p1, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->endpoint:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 58
    invoke-interface {p2}, Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;->getEndpoint()Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/kca/customer/device_configuration"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->isValidUri(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iput-object p2, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->endpoint:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string p0, "\\A"

    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private isValidUri(Ljava/lang/String;)Z
    .locals 1

    .line 131
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;
    .locals 8

    const-string p1, "com.amazon.ras.uservalidation.GetDeviceConfigurationAsyncTask"

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->endpoint:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->adp:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x1388

    .line 83
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x3a98

    .line 84
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 86
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_3

    const/16 v6, 0x12c

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_2

    const-string v5, "The response from the server to get device configuration was empty."

    .line 100
    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v2

    .line 105
    :cond_2
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v5}, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;

    move-result-object v2
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_5

    .line 115
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :cond_3
    :goto_1
    :try_start_4
    const-string v6, "The response from the server to get device configuration was not expected. StatusCode: %d Response: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v0

    aput-object v4, v7, v1

    .line 93
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    .line 112
    :goto_2
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse JSON from device configuration api. Response: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_5

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v3, v2

    :goto_3
    const-string v1, "Failed to retrieve DeviceConfiguration."

    .line 110
    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_5

    goto :goto_0

    :catch_6
    move-exception v4

    move-object v3, v2

    :goto_4
    const-string v5, "Bad URL: \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    iget-object v6, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->endpoint:Ljava/lang/String;

    aput-object v6, v1, v0

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_5
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->deviceConfigurationCache:Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;

    invoke-interface {v0, p1}, Lcom/amazon/ras/uservalidation/cache/IDeviceConfigurationCache;->setDeviceConfiguration(Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save device configuration. DeviceConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.ras.uservalidation.GetDeviceConfigurationAsyncTask"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;

    invoke-virtual {p0, p1}, Lcom/amazon/ras/uservalidation/GetDeviceConfigurationAsyncTask;->onPostExecute(Lcom/amazon/ras/uservalidation/models/DeviceConfiguration;)V

    return-void
.end method
