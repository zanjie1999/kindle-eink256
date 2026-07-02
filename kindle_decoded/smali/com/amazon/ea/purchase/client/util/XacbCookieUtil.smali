.class public Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;
.super Ljava/lang/Object;
.source "XacbCookieUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.util.XacbCookieUtil"

.field private static final XACB_COOKIE_PATTERN_JSON:Ljava/util/regex/Pattern;

.field private static final XACB_COOKIE_PATTERN_SINGLE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(x-[a-z]+)=\"([^;]+)\";.*domain=([a-z\\.]+);.*"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->XACB_COOKIE_PATTERN_SINGLE:Ljava/util/regex/Pattern;

    const-string v0, "^(x-[a-z]+)=([^;]+);.*domain=([a-z\\.]+);"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->XACB_COOKIE_PATTERN_JSON:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static getCookie(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 10

    const-string v0, "XacbCookieUtilGetCookie"

    .line 55
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    const-string v3, "HostnameNull"

    .line 57
    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 119
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    :cond_1
    :try_start_1
    const-string v2, ".amazon"

    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getXmainXacbCookieForDevicePfm()Ljava/lang/String;

    move-result-object p0

    .line 70
    sget-object v2, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->XACB_COOKIE_PATTERN_SINGLE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v7, "CookieMatcherPatternSuccess"

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 72
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    invoke-static {v7, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 77
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p1, p0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p1

    .line 80
    :cond_3
    :try_start_3
    invoke-static {v7, v0}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 81
    sget-object p0, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->TAG:Ljava/lang/String;

    const-string p1, "XACB cookie does not match expected domain"

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    .line 86
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    sget-object v2, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->TAG:Ljava/lang/String;

    const-string v4, "XACB cookie might be json, attempting to parse..."

    invoke-static {v2, v4}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    :cond_5
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 94
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    sget-object v8, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->XACB_COOKIE_PATTERN_JSON:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-ne v8, v6, :cond_6

    .line 100
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 103
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    invoke-static {v7, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 105
    new-instance p0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p0, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 115
    :cond_7
    :try_start_6
    sget-object p0, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->TAG:Ljava/lang/String;

    const-string p1, "Failed to locate XACB Cookie with matching domain"

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {v7, v0}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    :catch_0
    move-exception p0

    .line 110
    :try_start_7
    sget-object p1, Lcom/amazon/ea/purchase/client/util/XacbCookieUtil;->TAG:Ljava/lang/String;

    const-string v1, "XACB cookie format not recognized (Both matcher and JSON parse have failed)"

    invoke-static {p1, v1, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    invoke-static {v7, v0}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 120
    throw p0
.end method
