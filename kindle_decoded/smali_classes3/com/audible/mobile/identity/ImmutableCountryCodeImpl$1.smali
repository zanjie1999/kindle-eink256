.class Lcom/audible/mobile/identity/ImmutableCountryCodeImpl$1;
.super Ljava/lang/Object;
.source "ImmutableCountryCodeImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/identity/ImmutableCountryCodeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/identity/CountryCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/identity/CountryCode;
    .locals 1

    .line 17
    new-instance v0, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/identity/CountryCode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/identity/CountryCode;
    .locals 0

    .line 23
    new-array p1, p1, [Lcom/audible/mobile/identity/CountryCode;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl$1;->newArray(I)[Lcom/audible/mobile/identity/CountryCode;

    move-result-object p1

    return-object p1
.end method
