.class final enum Lcom/amazon/device/ads/Metrics$MetricType;
.super Ljava/lang/Enum;
.source "Metrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Metrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MetricType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/Metrics$MetricType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AAX_CONFIG_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AAX_CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AAX_LATENCY_GET_AD:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum ADLAYOUT_HEIGHT_ZERO:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_ASPECT_RATIO_LESS_THAN_SCREEN_ASPECT_RATIO:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_COUNTER_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_COUNTER_FAILED_DUE_TO_NO_RETRY:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_COUNTER_IDENTIFIED_DEVICE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_COUNTER_PARENT_VIEW_MISSING:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_COUNTER_RENDERING_FATAL:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_COUNTER_RESHOWN:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_EXPIRED_BEFORE_SHOWING:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_FAILED_INVALID_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_FAILED_LAYOUT_NOT_RUN:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_FAILED_NULL_LAYOUT_PARAMS:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_FAILED_UNKNOWN_WEBVIEW_ISSUE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_IS_INTERSTITIAL:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LATENCY_RENDER:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LATENCY_RENDER_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LATENCY_TOTAL:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LATENCY_TOTAL_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LATENCY_TOTAL_SUCCESS:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOADED_TO_AD_SHOW_TIME:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_FAILED_INTERNAL_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_FAILED_NETWORK_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_FAILED_NO_FILL:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_NO_RETRY_TTL_RECEIVED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum APP_INFO_LABEL_INDEX_OUT_OF_BOUNDS:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum ASSETS_CREATED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum ASSETS_ENSURED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum ASSETS_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CARRIER_NAME:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CDN_JAVASCRIPT_DOWLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CDN_JAVASCRIPT_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CONFIG_DOWNLOAD_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CONFIG_PARSE_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CONNECTION_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum CUSTOM_RENDER_HANDLED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum EXPIRED_AD_CALL:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum INTERSTITIAL_AD_ACTIVITY_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum RENDER_REQUIREMENT_CHECK_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum SET_ORIENTATION_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum SIS_LATENCY_REGISTER:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum TLS_ENABLED:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum VIEWPORT_SCALE:Lcom/amazon/device/ads/Metrics$MetricType;

.field public static final enum WIFI_PRESENT:Lcom/amazon/device/ads/Metrics$MetricType;


# instance fields
.field private final aaxName:Ljava/lang/String;

.field private final isAdTypeSpecific:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "AD_LATENCY_TOTAL"

    const-string/jumbo v4, "tl"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 36
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v3, "AD_LATENCY_TOTAL_SUCCESS"

    const-string/jumbo v4, "tsl"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_SUCCESS:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 39
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/4 v3, 0x2

    const-string v4, "AD_LATENCY_TOTAL_FAILURE"

    const-string/jumbo v5, "tfl"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 43
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/4 v4, 0x3

    const-string v5, "AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START"

    const-string v6, "llfsl"

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 45
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/4 v5, 0x4

    const-string v6, "AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP"

    const-string v7, "lfsul"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 47
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/4 v6, 0x5

    const-string v7, "AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START"

    const-string v8, "lfsasl"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 49
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/4 v7, 0x6

    const-string v8, "AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END"

    const-string v9, "laefel"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 51
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/4 v8, 0x7

    const-string v9, "AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP"

    const-string v10, "lffsul"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 54
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v9, 0x8

    const-string v10, "AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START"

    const-string v11, "lffsrsl"

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 57
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v10, 0x9

    const-string v11, "AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE"

    const-string v12, "lffsfl"

    invoke-direct {v0, v11, v10, v12, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 59
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v11, 0xa

    const-string v12, "AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL"

    const-string v13, "lcaul"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 61
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v12, 0xb

    const-string v13, "ASSETS_CREATED_LATENCY"

    const-string v14, "lacl"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_CREATED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 63
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v13, 0xc

    const-string v14, "ASSETS_ENSURED_LATENCY"

    const-string v15, "lael"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_ENSURED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 65
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v14, 0xd

    const-string v15, "ASSETS_FAILED"

    const-string v13, "af"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 67
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v13, 0xe

    const-string v15, "AD_LOADED_TO_AD_SHOW_TIME"

    const-string v14, "alast"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOADED_TO_AD_SHOW_TIME:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 69
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v14, 0xf

    const-string v15, "AD_SHOW_LATENCY"

    const-string/jumbo v13, "lsa"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 71
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v13, 0x10

    const-string v15, "AD_SHOW_DURATION"

    const-string/jumbo v14, "sd"

    invoke-direct {v0, v15, v13, v14, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 73
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v14, 0x11

    const-string v15, "AD_LAYOUT_INITIALIZATION"

    const-string v13, "ali"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 76
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v13, 0x12

    const-string v15, "AAX_LATENCY_GET_AD"

    const-string v14, "al"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_LATENCY_GET_AD:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 78
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v14, 0x13

    const-string v15, "AD_LOAD_FAILED"

    const-string v13, "lf"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 81
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v13, 0x14

    const-string v15, "AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT"

    const-string v14, "lfat"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 84
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v14, 0x15

    const-string v15, "AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT"

    const-string v13, "lfpt"

    invoke-direct {v0, v15, v14, v13, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 86
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_LOAD_FAILED_NO_FILL"

    const/16 v15, 0x16

    const-string v14, "lfnf"

    invoke-direct {v0, v13, v15, v14}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_NO_FILL:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 88
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_LOAD_FAILED_NETWORK_TIMEOUT"

    const/16 v14, 0x17

    const-string v15, "lfnt"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_NETWORK_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 90
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_LOAD_FAILED_INTERNAL_ERROR"

    const/16 v14, 0x18

    const-string v15, "lfie"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_INTERNAL_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 91
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_COUNTER_IDENTIFIED_DEVICE"

    const/16 v14, 0x19

    const-string v15, "id"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_IDENTIFIED_DEVICE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 94
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_COUNTER_RENDERING_FATAL"

    const/16 v14, 0x1a

    const-string/jumbo v15, "rf"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_RENDERING_FATAL:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 97
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_LATENCY_RENDER"

    const/16 v14, 0x1b

    const-string/jumbo v15, "rl"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 100
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_LATENCY_RENDER_FAILED"

    const/16 v14, 0x1c

    const-string/jumbo v15, "rlf"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 102
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_COUNTER_FAILED_DUE_TO_NO_RETRY"

    const/16 v14, 0x1d

    const-string/jumbo v15, "nrtf"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_FAILED_DUE_TO_NO_RETRY:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 104
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_NO_RETRY_TTL_RECEIVED"

    const/16 v14, 0x1e

    const-string/jumbo v15, "nrtr"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_NO_RETRY_TTL_RECEIVED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 105
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_COUNTER_AUTO_AD_SIZE"

    const/16 v14, 0x1f

    const-string v15, "aas"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 106
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_COUNTER_PARENT_VIEW_MISSING"

    const/16 v14, 0x20

    const-string/jumbo v15, "pvm"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_PARENT_VIEW_MISSING:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 107
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "ADLAYOUT_HEIGHT_ZERO"

    const/16 v14, 0x21

    const-string v15, "ahz"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->ADLAYOUT_HEIGHT_ZERO:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 108
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "VIEWPORT_SCALE"

    const/16 v14, 0x22

    const-string/jumbo v15, "vs"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->VIEWPORT_SCALE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 109
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_COUNTER_RESHOWN"

    const/16 v14, 0x23

    const-string/jumbo v15, "rs"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_RESHOWN:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 111
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_FAILED_UNKNOWN_WEBVIEW_ISSUE"

    const/16 v14, 0x24

    const-string v15, "fuwi"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_UNKNOWN_WEBVIEW_ISSUE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 112
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_FAILED_NULL_LAYOUT_PARAMS"

    const/16 v14, 0x25

    const-string v15, "fnlp"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_NULL_LAYOUT_PARAMS:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 113
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_FAILED_LAYOUT_NOT_RUN"

    const/16 v14, 0x26

    const-string v15, "flnr"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_LAYOUT_NOT_RUN:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 114
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_FAILED_INVALID_AUTO_AD_SIZE"

    const/16 v14, 0x27

    const-string v15, "faas"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_INVALID_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 116
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED"

    const/16 v14, 0x28

    const-string/jumbo v15, "sid"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 117
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "SIS_LATENCY_REGISTER"

    const/16 v14, 0x29

    const-string/jumbo v15, "srl"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_REGISTER:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 118
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "SIS_LATENCY_UPDATE_DEVICE_INFO"

    const/16 v14, 0x2a

    const-string/jumbo v15, "sul"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 119
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "SIS_LATENCY_REGISTER_EVENT"

    const/16 v14, 0x2b

    const-string/jumbo v15, "srel"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 121
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CONFIG_DOWNLOAD_ERROR"

    const/16 v14, 0x2c

    const-string v15, "cde"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CONFIG_DOWNLOAD_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 122
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CONFIG_DOWNLOAD_LATENCY"

    const/16 v14, 0x2d

    const-string v15, "cdt"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 123
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CONFIG_PARSE_ERROR"

    const/16 v14, 0x2e

    const-string v15, "cpe"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CONFIG_PARSE_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 125
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AAX_CONFIG_DOWNLOAD_LATENCY"

    const/16 v14, 0x2f

    const-string v15, "acl"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 126
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AAX_CONFIG_DOWNLOAD_FAILED"

    const/16 v14, 0x30

    const-string v15, "acf"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 128
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CUSTOM_RENDER_HANDLED"

    const/16 v14, 0x31

    const-string v15, "crh"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CUSTOM_RENDER_HANDLED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 131
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "TLS_ENABLED"

    const/16 v14, 0x32

    const-string/jumbo v15, "tls"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->TLS_ENABLED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 135
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "WIFI_PRESENT"

    const/16 v14, 0x33

    const-string/jumbo v15, "wifi"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->WIFI_PRESENT:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 136
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CARRIER_NAME"

    const/16 v14, 0x34

    const-string v15, "car"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CARRIER_NAME:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 137
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CONNECTION_TYPE"

    const/16 v14, 0x35

    const-string v15, "ct"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CONNECTION_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 139
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_IS_INTERSTITIAL"

    const/16 v14, 0x36

    const-string v15, "i"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_IS_INTERSTITIAL:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 140
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "INTERSTITIAL_AD_ACTIVITY_FAILED"

    const/16 v14, 0x37

    const-string v15, "iaaf"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->INTERSTITIAL_AD_ACTIVITY_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 141
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "RENDER_REQUIREMENT_CHECK_FAILURE"

    const/16 v14, 0x38

    const-string/jumbo v15, "rrcfc"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->RENDER_REQUIREMENT_CHECK_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 142
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "EXPIRED_AD_CALL"

    const/16 v14, 0x39

    const-string v15, "eac"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->EXPIRED_AD_CALL:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 143
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_ASPECT_RATIO_LESS_THAN_SCREEN_ASPECT_RATIO"

    const/16 v14, 0x3a

    const-string/jumbo v15, "rarfc"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_ASPECT_RATIO_LESS_THAN_SCREEN_ASPECT_RATIO:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 144
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "SET_ORIENTATION_FAILURE"

    const/16 v14, 0x3b

    const-string/jumbo v15, "rsofc"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SET_ORIENTATION_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 145
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "AD_EXPIRED_BEFORE_SHOWING"

    const/16 v14, 0x3c

    const-string v15, "aebs"

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->AD_EXPIRED_BEFORE_SHOWING:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 147
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CDN_JAVASCRIPT_DOWLOAD_LATENCY"

    const/16 v14, 0x3d

    const-string v15, "cjdl"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 148
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "CDN_JAVASCRIPT_DOWNLOAD_FAILED"

    const/16 v14, 0x3e

    const-string v15, "cjdf"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 150
    new-instance v0, Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v13, "APP_INFO_LABEL_INDEX_OUT_OF_BOUNDS"

    const/16 v14, 0x3f

    const-string v15, "ailioob"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->APP_INFO_LABEL_INDEX_OUT_OF_BOUNDS:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v13, 0x40

    new-array v13, v13, [Lcom/amazon/device/ads/Metrics$MetricType;

    .line 29
    sget-object v14, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_SUCCESS:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_TOTAL_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_CREATED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_ENSURED_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->ASSETS_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOADED_TO_AD_SHOW_TIME:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_LATENCY_GET_AD:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_NO_FILL:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_NETWORK_TIMEOUT:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_FAILED_INTERNAL_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_IDENTIFIED_DEVICE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x19

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_RENDERING_FATAL:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x1a

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x1b

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x1c

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_FAILED_DUE_TO_NO_RETRY:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x1d

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_NO_RETRY_TTL_RECEIVED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x1e

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x1f

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_PARENT_VIEW_MISSING:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x20

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->ADLAYOUT_HEIGHT_ZERO:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x21

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->VIEWPORT_SCALE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x22

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_RESHOWN:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x23

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_UNKNOWN_WEBVIEW_ISSUE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x24

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_NULL_LAYOUT_PARAMS:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x25

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_LAYOUT_NOT_RUN:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x26

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_INVALID_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x27

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x28

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_REGISTER:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x29

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x2a

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x2b

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CONFIG_DOWNLOAD_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x2c

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x2d

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CONFIG_PARSE_ERROR:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x2e

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x2f

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x30

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CUSTOM_RENDER_HANDLED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x31

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->TLS_ENABLED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x32

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->WIFI_PRESENT:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x33

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CARRIER_NAME:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x34

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CONNECTION_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x35

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_IS_INTERSTITIAL:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x36

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->INTERSTITIAL_AD_ACTIVITY_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x37

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->RENDER_REQUIREMENT_CHECK_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x38

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->EXPIRED_AD_CALL:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x39

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_ASPECT_RATIO_LESS_THAN_SCREEN_ASPECT_RATIO:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x3a

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->SET_ORIENTATION_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x3b

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_EXPIRED_BEFORE_SHOWING:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x3c

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x3d

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    const/16 v2, 0x3e

    aput-object v1, v13, v2

    const/16 v1, 0x3f

    aput-object v0, v13, v1

    sput-object v13, Lcom/amazon/device/ads/Metrics$MetricType;->$VALUES:[Lcom/amazon/device/ads/Metrics$MetricType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/device/ads/Metrics$MetricType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput-object p3, p0, Lcom/amazon/device/ads/Metrics$MetricType;->aaxName:Ljava/lang/String;

    .line 164
    iput-boolean p4, p0, Lcom/amazon/device/ads/Metrics$MetricType;->isAdTypeSpecific:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/Metrics$MetricType;
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/Metrics$MetricType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/Metrics$MetricType;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->$VALUES:[Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/Metrics$MetricType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/Metrics$MetricType;

    return-object v0
.end method


# virtual methods
.method public getAaxName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics$MetricType;->aaxName:Ljava/lang/String;

    return-object v0
.end method

.method public isAdTypeSpecific()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/amazon/device/ads/Metrics$MetricType;->isAdTypeSpecific:Z

    return v0
.end method
