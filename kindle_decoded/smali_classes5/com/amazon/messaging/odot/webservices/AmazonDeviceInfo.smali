.class public Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;
.super Lcom/amazon/messaging/odot/webservices/DeviceInfo;
.source "AmazonDeviceInfo.java"


# static fields
.field private static final BUILD_NAME:Ljava/lang/String;

.field private static final BUILD_NUMBER:Ljava/lang/String;

.field private static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEFAULT_BUILD_NUMBER:I = 0x0

.field private static final DEVICE_TYPE:Ljava/lang/String; = "AIQC11IVNRMBB"

.field private static final PRODUCT_DEVICE:Ljava/lang/String;

.field private static final PRODUCT_MODEL:Ljava/lang/String;

.field private static final SIGNATURE_TYPE:Ljava/lang/String;

.field private static final SYSTEM_PROPERTIES:Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOSVersion:Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

.field private mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;-><init>()V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SYSTEM_PROPERTIES:Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

    const-string/jumbo v1, "ro.build.version.incremental"

    .line 28
    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->BUILD_NAME:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SYSTEM_PROPERTIES:Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

    const-string/jumbo v1, "ro.build.type"

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->BUILD_TYPE:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SYSTEM_PROPERTIES:Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

    const-string/jumbo v1, "ro.build.version.number"

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->BUILD_NUMBER:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SYSTEM_PROPERTIES:Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

    const-string/jumbo v1, "ro.build.lab126.sign.type"

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SIGNATURE_TYPE:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SYSTEM_PROPERTIES:Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

    const-string/jumbo v1, "ro.product.model"

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->PRODUCT_MODEL:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SYSTEM_PROPERTIES:Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;

    const-string/jumbo v1, "ro.product.device"

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->PRODUCT_DEVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 40
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->BUILD_NAME:Ljava/lang/String;

    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->BUILD_TYPE:Ljava/lang/String;

    .line 44
    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->parseBuildType(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    move-result-object v2

    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->BUILD_NUMBER:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->parseBuildNumber(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->SIGNATURE_TYPE:Ljava/lang/String;

    sget-object v5, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->PRODUCT_MODEL:Ljava/lang/String;

    sget-object v6, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->PRODUCT_DEVICE:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;-><init>(Ljava/lang/String;Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mOSVersion:Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    return-void
.end method

.method private static parseBuildNumber(Ljava/lang/String;)I
    .locals 3

    .line 132
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 134
    :catch_0
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Build Number %s could not be parsed to an integer. Using default value"

    .line 135
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {v0, p0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static parseBuildType(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;
    .locals 3

    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->fromString(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/messaging/odot/webservices/InvalidEnumValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 144
    :catch_0
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse the build type from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDeviceSecret()Ljava/lang/String;
    .locals 7

    const-string v0, "Failed to retrieve the device secret"

    .line 84
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    const-string v2, "com.lab126.idme.Idme"

    invoke-virtual {v1, v2}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->getHiddenClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 86
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    const-string v1, "Class: com.lab126.idme.Idme does not exist"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    const-string/jumbo v4, "readSecret"

    invoke-virtual {v3, v1, v4}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    .line 92
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    const-string v1, "Method: readSecret deos not exist"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 97
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v2, v4}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 102
    sget-object v3, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catch_1
    move-exception v1

    .line 99
    sget-object v3, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->isValidSerialNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    const-string v1, "Retrieved an invalid serial number from Build.SERIAL. Generating an UUID instead."

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/ThirdPartyDeviceUtils;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    const-string v0, "AIQC11IVNRMBB"

    return-object v0
.end method

.method public getRadioId()Ljava/lang/String;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve the wifi manager"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 117
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve the wifi info"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 121
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 123
    sget-object v0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve the mac address"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v1, ":"

    const-string v2, ""

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionInfo()Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;->mOSVersion:Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;

    return-object v0
.end method

.method public isValidSerialNumber(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
