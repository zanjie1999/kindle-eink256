.class public Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;
.super Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageMappingType"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.property.account.extratokens.account_packages"

    .line 223
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createCurrentPackageMapping(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 229
    new-instance v0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSupportedOnThisPlatform(Landroid/content/Context;)Z
    .locals 1

    .line 238
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string/jumbo v0, "sso_platform"

    .line 240
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/ds;

    .line 242
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ds;->do()Z

    move-result p0

    return p0
.end method
