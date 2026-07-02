.class public Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;
.super Ljava/lang/Object;
.source "DevicePlatformIdentifierUtil.java"


# static fields
.field private static final BUILD_MANUFACTURER_VALUE_AMAZON:Ljava/lang/String; = "Amazon"

.field private static sDevicePlatformIdentifierUtil:Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;


# instance fields
.field private final mIsDevicePlatformFireOS:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->mIsDevicePlatformFireOS:Z

    return-void
.end method

.method public static getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->sDevicePlatformIdentifierUtil:Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    invoke-direct {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->sDevicePlatformIdentifierUtil:Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    .line 57
    :cond_0
    sget-object v0, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->sDevicePlatformIdentifierUtil:Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    return-object v0
.end method


# virtual methods
.method public isDevicePlatformAndroid()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->mIsDevicePlatformFireOS:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDevicePlatformFireOS()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->mIsDevicePlatformFireOS:Z

    return v0
.end method
