.class public final Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;
.super Ljava/lang/Object;
.source "FeatureHelpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isClassFound(Ljava/lang/String;)Z
    .locals 0

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDCMFor3PSupported()Z
    .locals 1

    const-string v0, "com.amazon.whispersync.client.metrics.transport.OAuthHelper"

    .line 30
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isClassFound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLwaSupported()Z
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager"

    .line 20
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isClassFound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMapR5Supported()Z
    .locals 1

    const-string v0, "com.amazon.identity.auth.device.api.MAPAccountManager"

    .line 15
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isClassFound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isS2DMSupported()Z
    .locals 1

    const-string v0, "com.amazon.whispersync.dcp.messaging.MessagingHelper"

    .line 35
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isClassFound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSSOSupported()Z
    .locals 1

    const-string v0, "com.amazon.whispersync.dcp.sso.AmazonAccountManager"

    .line 25
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isClassFound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
