.class public Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeFilter;
.super Ljava/lang/Object;
.source "HardwareAttributeFilter.java"


# static fields
.field private static final BLACKLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "dcaps.hardware.filter"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "capabilitiesCodeVersion"

    const-string v1, "secure.android_id"

    const-string v2, "screenRotation"

    const-string v3, "screenSize.width"

    const-string v4, "screenSize.height"

    const-string v5, "build.serial"

    const-string v6, "screenRealSize.height"

    const-string v7, "screenRealSize.width"

    const-string v8, "deviceDisplayPixelsHeight"

    const-string v9, "deviceDisplayPixelsWidth"

    .line 47
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeFilter;->BLACKLIST:Ljava/util/List;

    return-void
.end method

.method public static applyFilter(Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;)Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;
    .locals 8

    .line 60
    new-instance v0, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;

    invoke-direct {v0}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->asMap()Ljava/util/Map;

    move-result-object p0

    .line 63
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    sget-object v3, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeFilter;->BLACKLIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "screenRotation"

    .line 71
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "dcaps.hardware.filter"

    const-string v4, "deviceDisplayPixelsWidth"

    const-string v5, "deviceDisplayPixelsHeight"

    const-string v6, "screenRealSize.width"

    const-string v7, "screenRealSize.height"

    if-nez v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "Orientation is Portrait"

    .line 79
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Orientation is Landscape"

    .line 73
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
