.class Lcom/audible/mobile/domain/ImmutableCustomerIdImpl$1;
.super Ljava/lang/Object;
.source "ImmutableCustomerIdImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/CustomerId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/CustomerId;
    .locals 1

    .line 16
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/CustomerId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/CustomerId;
    .locals 0

    .line 21
    new-array p1, p1, [Lcom/audible/mobile/domain/CustomerId;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl$1;->newArray(I)[Lcom/audible/mobile/domain/CustomerId;

    move-result-object p1

    return-object p1
.end method
