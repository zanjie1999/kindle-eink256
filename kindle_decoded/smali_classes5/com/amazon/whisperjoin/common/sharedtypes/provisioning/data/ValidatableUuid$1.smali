.class final Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid$1;
.super Ljava/lang/Object;
.source "ValidatableUuid.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;
    .locals 2

    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;
    .locals 1

    if-eqz p1, :cond_0

    .line 56
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;
    .locals 1

    if-ltz p1, :cond_0

    .line 74
    new-array p1, p1, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    return-object p1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "size cannot be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid$1;->newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    move-result-object p1

    return-object p1
.end method
