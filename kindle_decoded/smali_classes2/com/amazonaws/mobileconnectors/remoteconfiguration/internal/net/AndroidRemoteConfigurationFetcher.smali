.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;
.super Ljava/lang/Object;
.source "AndroidRemoteConfigurationFetcher.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;,
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;
    }
.end annotation


# static fields
.field private static final ARCUS_CLIENT_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CHARSET_NAME_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_READ_TIMEOUT:I = 0x3a98

.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HEADER_AMZ_TARGET:Ljava/lang/String; = "X-Amz-Target"

.field private static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_OK_STATUS_CODE:I = 0xc8

.field private static final QUERY_CONFIGURATION_TARGET:Ljava/lang/String; = "RemoteConfigurationDistributionService.QueryConfiguration"

.field private static final REQUEST_KEY_APP_CONFIG_ID:Ljava/lang/String; = "appConfigId"

.field private static final REQUEST_KEY_CLIENT_ATTRIBUTES:Ljava/lang/String; = "clientAttributes"

.field private static final REQUEST_KEY_LAST_SEEN_ENTITY_TAG:Ljava/lang/String; = "lastSeenEntityTag"

.field private static final RESPONSE_KEY_CONFIGURATION:Ljava/lang/String; = "resultVariables"

.field private static final RESPONSE_KEY_ENTITY_TAG:Ljava/lang/String; = "entityTag"

.field private static final RESPONSE_KEY_UPDATED:Ljava/lang/String; = "updatedConfigurationAvailable"

.field private static final TAG:Ljava/lang/String; = "AndroidRemoteConfigurationFetcher"

.field private static final USER_AGENT_PREFIX:Ljava/lang/String; = "Arcus-Android/"

.field private static final XAMZ_JSON_CONTENT_TYPE:Ljava/lang/String; = "application/x-amz-json-1.1"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndpoint:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[1-9][0-9]*\\.[0-9]+\\.[0-9]+"

    .line 105
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->ARCUS_CLIENT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 200
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mEndpoint:Ljava/net/URL;

    return-void

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The endpoint may not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The context may not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildRemoteConfiguration(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .locals 7

    :try_start_0
    const-string/jumbo v0, "updatedConfigurationAvailable"

    .line 465
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v0, "entityTag"

    .line 466
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 472
    :try_start_1
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    const-string v2, "resultVariables"

    .line 473
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, p2, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 478
    :goto_0
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    const/4 v4, 0x2

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object p2

    :catch_1
    move-exception p1

    .line 468
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v0, "Expected elements missing from the response"

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private buildRequestBody(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)[B
    .locals 2

    .line 343
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appConfigId"

    .line 345
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lastSeenEntityTag"

    .line 346
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 348
    invoke-interface {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;->getAllAttributes()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "clientAttributes"

    .line 350
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 351
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string p1, "UTF-8"

    .line 357
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 358
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 355
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string p3, "Error building request"

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private configureConnection(Ljava/net/HttpURLConnection;)V
    .locals 1

    const/16 v0, 0x3a98

    .line 262
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 263
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 265
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 266
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "com.amazonaws.sdk.disableCertChecking"

    .line 268
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->disableCertificateValidation(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_0
    return-void
.end method

.method private disableCertificateValidation(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 277
    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$TrustAllManager;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$1;)V

    aput-object v2, v0, v1

    :try_start_0
    const-string v1, "TLS"

    .line 280
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v3, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 286
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;

    invoke-direct {v0, v3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$AllowAllHostnameVerifier;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher$1;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void

    :catch_0
    move-exception p1

    .line 283
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getArcusUserAgent()Ljava/lang/String;
    .locals 3

    .line 321
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->ARCUS_CLIENT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "1.2.229293.0_2407010"

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "1.2.x"

    .line 328
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arcus-Android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private readResponse(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "Error closing response reader"

    .line 401
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 413
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v3, "gzip"

    const-string v4, "Content-Encoding"

    .line 415
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, p1

    .line 418
    :cond_0
    new-instance p1, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {p1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 420
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    int-to-char v3, v3

    .line 422
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 424
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 432
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 434
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    invoke-direct {v1, v0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v5, v2

    move-object v2, v1

    :goto_1
    move-object v1, v5

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v5, v2

    move-object v2, v1

    :goto_2
    move-object v1, v5

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v2, v1

    .line 428
    :goto_3
    :try_start_5
    new-instance v3, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v4, "Invalid response format."

    invoke-direct {v3, v4, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception p1

    move-object v2, v1

    .line 426
    :goto_4
    new-instance v3, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v4, "Error reading response."

    invoke-direct {v3, v4, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_5
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 438
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 440
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v1, "Error closing response stream"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 432
    :cond_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 443
    :cond_3
    :goto_6
    throw p1

    :catch_8
    move-exception p1

    .line 434
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    invoke-direct {v1, v0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 406
    :cond_4
    new-instance p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request unsuccessful. Received code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_9
    move-exception p1

    .line 403
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v1, "Unable to get response code."

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setHeaders(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "Content-Type"

    const-string v1, "application/x-amz-json-1.1"

    .line 300
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Amz-Target"

    const-string v1, "RemoteConfigurationDistributionService.QueryConfiguration"

    .line 301
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 302
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->getArcusUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeRequest(Ljava/net/HttpURLConnection;[B)V
    .locals 3

    const-string v0, "Error closing the connection\'s output"

    const/4 v1, 0x1

    .line 369
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 370
    array-length v1, p2

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 v1, 0x0

    .line 373
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 374
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 375
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 381
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 377
    :try_start_2
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string v2, "Error writing the request"

    invoke-direct {p2, v2, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    .line 381
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 383
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 386
    :cond_1
    :goto_2
    throw p1
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->mEndpoint:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->configureConnection(Ljava/net/HttpURLConnection;)V

    .line 222
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->setHeaders(Ljava/net/HttpURLConnection;)V

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->buildRequestBody(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)[B

    move-result-object p2

    .line 224
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->writeRequest(Ljava/net/HttpURLConnection;[B)V

    .line 225
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->readResponse(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p2

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;->buildRemoteConfiguration(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 228
    :goto_0
    :try_start_2
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string p3, "Unable to open connection"

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 233
    :cond_1
    throw p1

    .line 215
    :cond_2
    new-instance p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;

    const-string p2, "There is no network connectivity."

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/NetworkException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The attributes may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The App Configuration ID may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
