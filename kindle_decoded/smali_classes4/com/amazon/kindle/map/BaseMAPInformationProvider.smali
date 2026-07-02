.class public Lcom/amazon/kindle/map/BaseMAPInformationProvider;
.super Lcom/amazon/identity/auth/device/api/MAPInformationProvider;
.source "BaseMAPInformationProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getDsnOverrideForChildDeviceType()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/PackageUtils;->hasGrover(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    invoke-super {p0}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->getDsnOverrideForChildDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
