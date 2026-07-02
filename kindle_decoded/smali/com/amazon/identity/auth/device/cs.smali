.class public Lcom/amazon/identity/auth/device/cs;
.super Lcom/amazon/identity/auth/device/cx;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.cs"


# instance fields
.field private final at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final hR:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/MultipleAccountManager;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/cx;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/amazon/identity/auth/device/cs;->hR:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    .line 26
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/cs;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-void
.end method


# virtual methods
.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cs;->hR:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    new-instance v2, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amazon/identity/auth/device/cs;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/cx;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    const-string v2, "com.amazon.dcp.sso.token.device.deviceserialname"

    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/cs;->TAG:Ljava/lang/String;

    const-string v1, "Cannot return DSN on this platform (Grover, Canary V1). We can only return it while the device is registered. Please use MAPAccountManager.getAccount() to ensure an account is existed."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
