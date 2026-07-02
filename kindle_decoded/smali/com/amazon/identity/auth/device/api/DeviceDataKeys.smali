.class public final Lcom/amazon/identity/auth/device/api/DeviceDataKeys;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static final KEY_DEVICE_SERIAL_NUMBER:Ljava/lang/String; = "Device Serial Number"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "DeviceType"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_KE_DEVICE:Ljava/lang/String; = "ke_device"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_KE_EDITION:Ljava/lang/String; = "ke_edition"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_RE_DEVICE:Ljava/lang/String; = "re_device"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceTypeKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "DeviceType"

    .line 92
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
