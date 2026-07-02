.class public final Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;
.super Ljava/lang/Object;
.source "ProvisioningStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field private final mInsecureModeSupported:Z

.field private mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mInsecureModeSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;Z)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 86
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mInsecureModeSupported:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProvisioningState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object v0
.end method

.method public insecureModeSupported()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mInsecureModeSupported:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisioningStatus [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", insecure-mode-supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mInsecureModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-boolean p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;->mInsecureModeSupported:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
