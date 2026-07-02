.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
.super Ljava/lang/Exception;
.source "WJError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDomain:I

.field private final mErrorDetails:I

.field private final mErrorType:I

.field private final mResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 59
    sget v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->NONE:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mDomain:I

    .line 46
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorType:I

    .line 47
    iput p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorDetails:I

    .line 48
    iput p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mResolution:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mDomain:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorDetails:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mResolution:I

    return-void
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

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    .line 92
    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mDomain:I

    iget v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mDomain:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorType:I

    iget v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorDetails:I

    iget v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorDetails:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mResolution:I

    iget p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mResolution:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDomain()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mDomain:I

    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 4

    .line 79
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getDomain()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorDetails()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getResolution()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%d:%d:%d:%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDetails()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorDetails:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorType:I

    return v0
.end method

.method public getResolution()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mResolution:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mDomain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorDetails:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WJError ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 110
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mDomain:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mErrorDetails:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->mResolution:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
