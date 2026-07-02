.class public final Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingType;,
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$CustomKeyMappingType;,
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;,
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;,
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;,
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;,
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;,
        Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.MultipleAccountManager"


# instance fields
.field private final gE:Lcom/amazon/identity/auth/device/y;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 478
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->mContext:Landroid/content/Context;

    .line 1019
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    new-instance v0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1024
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object v0

    .line 480
    :goto_0
    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->gE:Lcom/amazon/identity/auth/device/y;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doesAccountHaveMapping(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "MultipleAccountManager:doesAccountHaveMapping"

    .line 555
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->mContext:Landroid/content/Context;

    const-string v2, "Time"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->gE:Lcom/amazon/identity/auth/device/y;

    invoke-interface {v2, p1, p2}, Lcom/amazon/identity/auth/device/y;->doesAccountHaveMapping(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 564
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return p1

    :catchall_0
    move-exception p1

    .line 563
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 564
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 565
    throw p1
.end method

.method public varargs getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->gE:Lcom/amazon/identity/auth/device/y;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/y;->getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAccountMappingOwner(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "MultipleAccountManager:getAccountMappingOwner"

    .line 579
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 583
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->gE:Lcom/amazon/identity/auth/device/y;

    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/y;->getAccountMappingOwner(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 588
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 587
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 588
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 589
    throw p1
.end method

.method public getIntentToRemoveAccountMapping(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/content/Intent;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "MultipleAccountManager:getIntentToRemoveAccountMapping"

    .line 601
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->gE:Lcom/amazon/identity/auth/device/y;

    invoke-interface {v2, p1}, Lcom/amazon/identity/auth/device/y;->getIntentToRemoveAccountMapping(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 610
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 609
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 610
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 611
    throw p1
.end method

.method public varargs removeAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "MultipleAccountManager:removeAccountMappings"

    .line 532
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->gE:Lcom/amazon/identity/auth/device/y;

    invoke-interface {v2, p1, p2}, Lcom/amazon/identity/auth/device/y;->removeAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 541
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return p1

    :catchall_0
    move-exception p1

    .line 540
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 541
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 542
    throw p1
.end method

.method public varargs setAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "MultipleAccountManager:setAccountMappings"

    .line 508
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 512
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->gE:Lcom/amazon/identity/auth/device/y;

    invoke-interface {v2, p1, p2}, Lcom/amazon/identity/auth/device/y;->setAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 517
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return p1

    :catchall_0
    move-exception p1

    .line 516
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 517
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 518
    throw p1
.end method
