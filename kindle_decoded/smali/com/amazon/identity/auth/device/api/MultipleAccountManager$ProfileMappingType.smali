.class public Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;
.super Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileMappingType"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;-><init>(IB)V

    return-void
.end method

.method public static createCurrentProfile(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;
    .locals 1

    .line 267
    new-instance p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;-><init>(I)V

    return-object p0
.end method

.method public static createCurrentViewableProfile(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;
    .locals 1

    .line 273
    new-instance p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;-><init>(I)V

    return-object p0
.end method

.method public static isSupportedOnThisPlatform(Landroid/content/Context;)Z
    .locals 1

    .line 282
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProfileMappingType is deprecated. Please use PrimaryUserMappingType instead"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
