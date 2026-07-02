.class public final Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;
.super Ljava/lang/Object;
.source "IdentityBasedDeviceInfoProvider.kt"

# interfaces
.implements Lcom/audible/mobile/activation/DeviceInfoProvider;


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final playerType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manufacturer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    iput-object p2, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->manufacturer:Ljava/lang/String;

    iput-object p3, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->playerType:Ljava/lang/String;

    iput-object p4, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceActivationSerialNumber()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v0}, Lcom/audible/mobile/identity/IdentityManager;->getDeviceActivationSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/audible/mobile/activation/IdentityBasedDeviceInfoProvider;->playerType:Ljava/lang/String;

    return-object v0
.end method
