.class public Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;
.super Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionUserMappingType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.property.sessionuser"

    const-string/jumbo v1, "true"

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isSupportedOnThisPlatform(Landroid/content/Context;)Z
    .locals 1

    .line 195
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    const-string/jumbo v0, "sso_platform"

    .line 197
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/ds;

    .line 199
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ds;->do()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.amazon.dcp.sso.action.central.session.user.change"

    .line 200
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ds;->bu(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
