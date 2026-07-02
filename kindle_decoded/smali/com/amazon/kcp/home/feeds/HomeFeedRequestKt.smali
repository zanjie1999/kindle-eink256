.class public final Lcom/amazon/kcp/home/feeds/HomeFeedRequestKt;
.super Ljava/lang/Object;
.source "HomeFeedRequest.kt"


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER_KEY:Ljava/lang/String; = "Accept-Language"

.field private static final COOKIE_HEADER_KEY:Ljava/lang/String; = "Cookie"

.field private static final JSON_RESPONSE_FORMAT:Ljava/lang/String; = "json"

.field private static final KINDLE_PORTION_USER_AGENT:Ljava/lang/String; = "/Kindle "

.field private static final KSTORE_HEADER_KEY:Ljava/lang/String; = "x-amzn-kstore"

.field private static final MAX_RETRIES:I = 0x5

.field private static final PARAM_BUILD_VARIANT:Ljava/lang/String; = "buildVariant"

.field private static final PARAM_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final PARAM_FORMAT:Ljava/lang/String; = "format"

.field private static final PARAM_PAGE_HOST_OVERRIDE:Ljava/lang/String; = "pagehostOverride"

.field private static final PARAM_PAGE_ID_OVERRIDE:Ljava/lang/String; = "pageIdOverride"

.field private static final PARAM_SOURCE_ASINS:Ljava/lang/String; = "sourceAsins"

.field private static final PARAM_USE_DEVICE_LOCALE:Ljava/lang/String; = "useDeviceLocale"

.field private static final PATH:Ljava/lang/String; = "/kindle-dbs/homepage"

.field private static final SCHEMA_FORMAT_HEADER_KEY:Ljava/lang/String; = "data-schema-format"

.field private static final SCHEMA_FORMAT_HEADER_VALUE:Ljava/lang/String; = "Sidekick"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.home.feeds.HomeFeedRequest"

.field private static final USER_AGENT_HEADER_KEY:Ljava/lang/String; = "User-Agent"

.field private static final USER_AGENT_PROPERTY_KEY:Ljava/lang/String; = "http.agent"

.field private static final VOLTRON_CID_HEADER_KEY:Ljava/lang/String; = "voltron-client-id"

.field private static final VOLTRON_CID_HEADER_VALUE_1P:Ljava/lang/String; = "kindle-fire-home"

.field private static final VOLTRON_CID_HEADER_VALUE_3P:Ljava/lang/String; = "KindleAppHome"


# direct methods
.method public static final synthetic access$appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/home/feeds/HomeFeedRequestKt;->appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method private static final appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-object p0
.end method
