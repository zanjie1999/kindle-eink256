.class public Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;
.super Ljava/lang/Object;
.source "DeliveryServiceDebugUtils.java"


# static fields
.field private static final ENABLE_USING_SINGLE_CF:Ljava/lang/String; = "EnableUsingSingleCF"

.field private static final TAG:Ljava/lang/String;

.field private static isUsingSingleCF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDebugValues(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "DeliveryServiceSettings"

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "EnableUsingSingleCF"

    .line 28
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF:Z

    return-void
.end method

.method private static isCNBuildOrAccount(Ljava/lang/String;)Z
    .locals 1

    .line 50
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {p0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUsingSingleCF(Ljava/lang/String;)Z
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isCNBuildOrAccount(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->SINGLE_GLOBAL_CLOUDFRONT_ENABLED:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p0

    const-string v0, "T1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "DeliveryServiceSettings"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 45
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleUsingSingleCF(Landroid/content/Context;)V
    .locals 2

    .line 32
    sget-boolean v0, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF:Z

    const-string v1, "EnableUsingSingleCF"

    .line 33
    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
