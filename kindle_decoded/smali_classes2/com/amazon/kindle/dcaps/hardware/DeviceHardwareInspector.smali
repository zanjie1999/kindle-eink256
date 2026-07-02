.class public Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;
.super Ljava/lang/Object;
.source "DeviceHardwareInspector.java"


# static fields
.field private static final KEYBOARD_CONFIG_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOLLIPOP_VERSION:I = 0x15

.field private static final NAVIGATION_CONFIG_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCHSCREEN_CONFIG_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 521
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->KEYBOARD_CONFIG_MAP:Landroid/util/SparseArray;

    .line 527
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->TOUCHSCREEN_CONFIG_MAP:Landroid/util/SparseArray;

    .line 533
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->NAVIGATION_CONFIG_MAP:Landroid/util/SparseArray;

    .line 544
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->KEYBOARD_CONFIG_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "KEYBOARD_12KEY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->KEYBOARD_CONFIG_MAP:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "KEYBOARD_QWERTY"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->KEYBOARD_CONFIG_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x1

    const-string v4, "KEYBOARD_NOKEYS"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 558
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->TOUCHSCREEN_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v4, "TOUCHSCREEN_FINGER"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 562
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->TOUCHSCREEN_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v4, "TOUCHSCREEN_NOTOUCH"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->TOUCHSCREEN_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v4, "TOUCHSCREEN_STYLUS"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->NAVIGATION_CONFIG_MAP:Landroid/util/SparseArray;

    const/4 v4, 0x4

    const-string v5, "NAVIGATION_WHEEL"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->NAVIGATION_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v4, "NAVIGATION_DPAD"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->NAVIGATION_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v2, "NAVIGATION_NONAV"

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    sget-object v0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->NAVIGATION_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v2, "NAVIGATION_TRACKBALL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-static {}, Lcom/amazon/kindle/dcaps/common/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    invoke-static {}, Lcom/amazon/kindle/dcaps/common/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context.getApplicationContext must not return null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMappedConfigValue(Landroid/util/SparseArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 707
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 708
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p3

    :cond_0
    return-object p1
.end method

.method private putScreenLayoutDirectionMaskIfAvailable(Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;)V
    .locals 2

    .line 1049
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc0

    .line 1050
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screenLayoutDirMask"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public getApiLevel()I
    .locals 1

    .line 807
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .line 879
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 823
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 2

    .line 1055
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1057
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public getCpuAbi()Ljava/lang/String;
    .locals 1

    .line 855
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuAbi2()Ljava/lang/String;
    .locals 1

    .line 887
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSizeRangeLargest()Ljava/lang/String;
    .locals 3

    .line 1026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1027
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1028
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1029
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getLogicalDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSizeRangeSmallest()Ljava/lang/String;
    .locals 3

    .line 1013
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1014
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1015
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1016
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getLogicalDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 945
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1073
    new-instance v0, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;

    invoke-direct {v0}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;-><init>()V

    .line 1075
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getCarrier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.fingerprint"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getProduct()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.product"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "capabilitiesCodeVersion"

    const-string v2, "1.1.x.x"

    .line 1081
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getApiLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APILevel"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getReleaseVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "releaseVersion"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getDisplay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->hasFieldSupportedAbis()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.supportedABIs"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getCpuAbi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpuABI"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getCpuAbi2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.cpuABI2"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getKeyboardConfiguration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceKeyboard"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getNavigationConfiguration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceNavigation"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getScreenLayoutConfiguration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceScreenLayout"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getTouchscreenConfiguration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceTouchscreen"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getBoard()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.board"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.device"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getHardware()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.hardware"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build.id"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secure.android_id"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getLogicalDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenRotation"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getWidthDisplay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenSize.width"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getHeightDisplay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenSize.height"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getResourceConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenLayoutRaw"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf

    .line 1107
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenSizeMask"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x30

    .line 1108
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenLongMask"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-direct {p0, v0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->putScreenLayoutDirectionMaskIfAvailable(Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;)V

    .line 1112
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getSerial()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1115
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getSerial()Ljava/lang/String;

    move-result-object v2

    const-string v3, "build.serial"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1120
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceDensityLogical"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceDensityClassification"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceDensityScaled"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceDisplayPixelsHeight"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceDisplayPixelsWidth"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceDisplayXDpi"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceDisplayYDpi"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1132
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "screenRealSize.width"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenRealSize.height"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v1, :cond_4

    .line 1139
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getCurrentSizeRangeSmallest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeRangeSmallest"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getCurrentSizeRangeLargest()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeRangeLargest"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getSystemAvailableFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v3, "true"

    .line 1147
    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 831
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 762
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 763
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "dcaps.DeviceHardwareInspector"

    const-string v2, "Exception caught while trying to retrieve displayMetrics"

    .line 767
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .line 863
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .line 953
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightDisplay()I
    .locals 3

    .line 997
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getLogicalDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1001
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 1002
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1003
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1004
    iget v0, v1, Landroid/graphics/Point;->y:I

    return v0

    .line 1006
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 961
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardConfiguration()Ljava/lang/String;
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 685
    sget-object v1, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->KEYBOARD_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v2, "KEYBOARD_UNDEFINED"

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getMappedConfigValue(Landroid/util/SparseArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogicalDisplay()Landroid/view/Display;
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 780
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 839
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 847
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationConfiguration()Ljava/lang/String;
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    .line 724
    sget-object v1, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->NAVIGATION_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v2, "NAVIGATION_UNDEFINED"

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getMappedConfigValue(Landroid/util/SparseArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 871
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 787
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 788
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 790
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 791
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseVersion()Ljava/lang/String;
    .locals 1

    .line 815
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getScreenLayoutConfiguration()Ljava/lang/String;
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "SCREENLAYOUT_SIZE_UNDEFINED"

    return-object v0

    :cond_0
    const-string v0, "SCREENLAYOUT_SIZE_XLARGE"

    return-object v0

    :cond_1
    const-string v0, "SCREENLAYOUT_SIZE_LARGE"

    return-object v0

    :cond_2
    const-string v0, "SCREENLAYOUT_SIZE_NORMAL"

    return-object v0

    :cond_3
    const-string v0, "SCREENLAYOUT_SIZE_SMALL"

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 2

    .line 969
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 970
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedAbis()[Ljava/lang/String;
    .locals 3

    const-string v0, "Ignoring exception from getSupportedAbisHelper(), build version is "

    const/4 v1, 0x0

    .line 924
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getSupportedAbisHelper()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 930
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 927
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method protected getSupportedAbisHelper()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 903
    const-class v0, Landroid/os/Build;

    const-string v1, "SUPPORTED_ABIS"

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSystemAvailableFeatures()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    iget-object v1, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 666
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 669
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 670
    iget-object v4, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTouchscreenConfiguration()Ljava/lang/String;
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 653
    sget-object v1, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->TOUCHSCREEN_CONFIG_MAP:Landroid/util/SparseArray;

    const-string v2, "TOUCHSCREEN_UNDEFINED"

    invoke-direct {p0, v1, v0, v2}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getMappedConfigValue(Landroid/util/SparseArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidthDisplay()I
    .locals 3

    .line 980
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getLogicalDisplay()Landroid/view/Display;

    move-result-object v0

    .line 984
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 985
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 986
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 987
    iget v0, v1, Landroid/graphics/Point;->x:I

    return v0

    .line 989
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasFieldSupportedAbis()Z
    .locals 2

    .line 913
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
