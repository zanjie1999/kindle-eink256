.class public Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;
.super Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimaryUserMappingType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 140
    invoke-static {}, Lcom/amazon/identity/auth/device/da;->cy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.dcp.sso.property.account.extratokens.account_profiles"

    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;-><init>(I)V

    return-void
.end method

.method public static createPrimaryMappingForProfile(I)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 157
    new-instance v0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;-><init>(I)V

    return-object v0
.end method

.method public static isSupportedOnThisPlatform(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
