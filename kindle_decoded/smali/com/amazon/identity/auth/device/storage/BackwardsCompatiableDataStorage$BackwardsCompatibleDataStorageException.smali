.class public Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;
.super Ljava/lang/Exception;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/fl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackwardsCompatibleDataStorageException"
.end annotation


# static fields
.field private static final nn:I

.field private static final no:Ljava/lang/String;


# instance fields
.field private mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 559
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    sput v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->nn:I

    .line 560
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->no:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/fl;)V
    .locals 1

    .line 566
    sget-object v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->no:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 567
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    return-void
.end method


# virtual methods
.method public bD()I
    .locals 1

    .line 579
    sget v0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->nn:I

    return v0
.end method

.method public bE()Ljava/lang/String;
    .locals 1

    .line 585
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eE()Lcom/amazon/identity/auth/device/fl;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage$BackwardsCompatibleDataStorageException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    return-object v0
.end method
