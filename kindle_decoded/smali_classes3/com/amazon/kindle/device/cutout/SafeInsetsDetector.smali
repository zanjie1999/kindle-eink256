.class public Lcom/amazon/kindle/device/cutout/SafeInsetsDetector;
.super Ljava/lang/Object;
.source "SafeInsetsDetector.java"

# interfaces
.implements Lcom/amazon/kcp/util/device/ISafeInsetsDetector;


# static fields
.field private static final MANUFACTURER_HUAWEI:Ljava/lang/String; = "HUAWEI"

.field private static final MANUFACTURER_OPPO:Ljava/lang/String; = "OPPO"

.field private static final MANUFACTURER_VIVO:Ljava/lang/String; = "VIVO"

.field private static final MANUFACTURER_XIAOMI:Ljava/lang/String; = "XIAOMI"


# instance fields
.field private cutoutHelperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/device/cutout/ICutoutHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/device/cutout/SafeInsetsDetector;->cutoutHelperMap:Ljava/util/Map;

    .line 22
    new-instance v1, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;

    invoke-direct {v1}, Lcom/amazon/kindle/device/cutout/HuaweiCutoutHelper;-><init>()V

    const-string v2, "HUAWEI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/device/cutout/SafeInsetsDetector;->cutoutHelperMap:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kindle/device/cutout/OppoCutoutHelper;

    invoke-direct {v1}, Lcom/amazon/kindle/device/cutout/OppoCutoutHelper;-><init>()V

    const-string v2, "OPPO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/device/cutout/SafeInsetsDetector;->cutoutHelperMap:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;

    invoke-direct {v1}, Lcom/amazon/kindle/device/cutout/VivoCutoutHelper;-><init>()V

    const-string v2, "VIVO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/device/cutout/SafeInsetsDetector;->cutoutHelperMap:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;

    invoke-direct {v1}, Lcom/amazon/kindle/device/cutout/XiaomiCutoutHelper;-><init>()V

    const-string v2, "XIAOMI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 2

    .line 30
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/amazon/kindle/device/cutout/SafeInsetsDetector;->cutoutHelperMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/device/cutout/ICutoutHelper;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0, p1}, Lcom/amazon/kindle/device/cutout/ICutoutHelper;->getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    return-object p1

    .line 38
    :cond_1
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    return-object p1
.end method
