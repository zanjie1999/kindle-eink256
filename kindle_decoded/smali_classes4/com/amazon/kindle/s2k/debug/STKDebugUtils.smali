.class public Lcom/amazon/kindle/s2k/debug/STKDebugUtils;
.super Ljava/lang/Object;
.source "STKDebugUtils.java"


# static fields
.field private static final ENABLE_STK_GAMMA_ENDPOINT:Ljava/lang/String; = "EnableSTKGammaEndpoint"

.field private static isSTKGammaEndpointEnabled:Z = false

.field private static prefs:Lcom/amazon/kindle/s2k/SendToKindlePreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static initDebugValues(Landroid/content/Context;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->prefs:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    const-string p0, "EnableSTKGammaEndpoint"

    .line 24
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->isSTKGammaEndpointEnabled:Z

    return-void
.end method

.method public static isSTKGammaEndpointEnabled()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->isSTKGammaEndpointEnabled:Z

    return v0
.end method

.method public static toggleSTKEndpoint()V
    .locals 3

    .line 41
    sget-boolean v0, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->isSTKGammaEndpointEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->isSTKGammaEndpointEnabled:Z

    .line 42
    sget-object v1, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->prefs:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    const-string v2, "EnableSTKGammaEndpoint"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    return-void
.end method
