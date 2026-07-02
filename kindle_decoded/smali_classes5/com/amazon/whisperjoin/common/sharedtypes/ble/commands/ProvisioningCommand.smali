.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;
.super Ljava/lang/Object;
.source "ProvisioningCommand.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mData:[B

.field private final mIdentifier:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "id"

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    const-string p2, "da"

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mData:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mData:[B

    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "identifier cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 106
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    .line 110
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    iget-object v2, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mData:[B

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mData:[B

    .line 112
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 113
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getData()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method

.method public getIdentifier()Ljava/util/UUID;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 118
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    .line 119
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mData:[B

    .line 120
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 121
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisioningCommand [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 66
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mIdentifier:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;->mData:[B

    const-string v1, "da"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
