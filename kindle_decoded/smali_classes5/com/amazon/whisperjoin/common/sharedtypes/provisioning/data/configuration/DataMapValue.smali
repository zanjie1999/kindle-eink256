.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;
.super Ljava/lang/Object;
.source "DataMapValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BOOLEAN:I = 0x3

.field private static final TYPE_BYTES:I = 0x0

.field private static final TYPE_INTEGER:I = 0x2

.field private static final TYPE_STRING:I = 0x1


# instance fields
.field private mBooleanValue:Ljava/lang/Boolean;

.field private mBytesValue:[B

.field private mIntegerValue:Ljava/lang/Integer;

.field private mStringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBooleanValue:Ljava/lang/Boolean;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "booleanValue can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mIntegerValue:Ljava/lang/Integer;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "integerValue can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mStringValue:Ljava/lang/String;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stringValue can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytesValue can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 75
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    .line 77
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mStringValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mStringValue:Ljava/lang/String;

    .line 78
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mIntegerValue:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mIntegerValue:Ljava/lang/Integer;

    .line 79
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBooleanValue:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBooleanValue:Ljava/lang/Boolean;

    .line 80
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBooleanValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBytesValue()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getIntegerValue()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mIntegerValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mStringValue:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mIntegerValue:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBooleanValue:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_4

    .line 98
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBytesValue:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mStringValue:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_1
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mIntegerValue:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mIntegerValue:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBooleanValue:Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->mBooleanValue:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void

    .line 96
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
