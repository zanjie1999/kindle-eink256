.class final Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;
.super Ljava/lang/Object;
.source "ProvisioningCommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;
    .locals 3

    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;)V

    return-object v0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;
    .locals 2

    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;)V

    return-object v0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;
    .locals 1

    if-ltz p1, :cond_0

    .line 113
    new-array p1, p1, [Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    return-object p1

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "size cannot be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse$1;->newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    move-result-object p1

    return-object p1
.end method
