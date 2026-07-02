.class public Lcom/amazon/kcp/application/StandaloneDeviceType;
.super Lcom/amazon/kcp/application/BaseDeviceType;
.source "StandaloneDeviceType.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/BaseDeviceType;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getDeviceTypeFromResources(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10028e

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/util/PackageUtils;->hasGrover(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1006eb

    goto :goto_0

    :cond_1
    const v0, 0x7f100377

    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getDeviceTypeIdFromChildResources(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/amazon/kcp/application/StandaloneDeviceType;->getDeviceTypeFromResources(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
