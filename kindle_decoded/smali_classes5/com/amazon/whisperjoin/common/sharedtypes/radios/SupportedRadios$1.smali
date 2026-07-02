.class final Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios$1;
.super Ljava/lang/Object;
.source "SupportedRadios.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;
    .locals 1

    .line 62
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;
    .locals 0

    .line 67
    new-array p1, p1, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios$1;->newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    move-result-object p1

    return-object p1
.end method
