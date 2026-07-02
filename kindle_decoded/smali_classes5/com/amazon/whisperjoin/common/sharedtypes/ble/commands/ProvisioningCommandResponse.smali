.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;
.super Ljava/lang/Object;
.source "ProvisioningCommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_KEY:Ljava/lang/String; = "da"

.field private static final IDENTIFIER_KEY:Ljava/lang/String; = "id"

.field private static final STATUS_KEY:Ljava/lang/String; = "st"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mData:[B

.field private final mIdentifier:Ljava/util/UUID;

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

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

    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    const-string/jumbo p2, "st"

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mStatus:I

    const-string p2, "da"

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mData:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 29
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    .line 30
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mStatus:I

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mData:[B

    return-void

    .line 26
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

.method public getData()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mData:[B

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

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mStatus:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 2

    .line 52
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->PROVISIONING_COMMANDS_STATUS_MAPS:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->PROVISIONING_COMMANDS_STATUS_MAPS:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommands;->PROVISIONING_COMMANDS_STATUS_MAPS:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisioningCommandResponse [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mIdentifier:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mStatus:I

    const-string/jumbo v1, "st"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->mData:[B

    const-string v1, "da"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
