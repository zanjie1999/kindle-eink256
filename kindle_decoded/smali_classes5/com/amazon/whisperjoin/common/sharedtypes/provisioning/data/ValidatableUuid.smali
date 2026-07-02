.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;
.super Ljava/lang/Object;
.source "ValidatableUuid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;->mValue:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;->mValue:Ljava/util/UUID;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuid cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/util/UUID;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;->mValue:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;->mValue:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;->mValue:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
