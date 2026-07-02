.class public Lcom/amazon/kindle/map/StandaloneMAPInformationProvider;
.super Lcom/amazon/kindle/map/BaseMAPInformationProvider;
.source "StandaloneMAPInformationProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/map/BaseMAPInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverrideChildDeviceType()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/amazon/kcp/application/AmazonDeviceType;->WHISKEYTOWN:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/StandaloneDeviceType;->getDeviceTypeFromResources(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
