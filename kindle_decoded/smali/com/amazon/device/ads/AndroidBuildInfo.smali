.class Lcom/amazon/device/ads/AndroidBuildInfo;
.super Ljava/lang/Object;
.source "AndroidBuildInfo.java"


# instance fields
.field private make:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private sdkInt:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->make:Ljava/lang/String;

    .line 17
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->model:Ljava/lang/String;

    .line 18
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->osVersion:Ljava/lang/String;

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->sdkInt:I

    return-void
.end method


# virtual methods
.method public getSDKInt()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->sdkInt:I

    return v0
.end method
