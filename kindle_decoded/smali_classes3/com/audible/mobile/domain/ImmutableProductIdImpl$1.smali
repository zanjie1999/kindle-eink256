.class Lcom/audible/mobile/domain/ImmutableProductIdImpl$1;
.super Ljava/lang/Object;
.source "ImmutableProductIdImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableProductIdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/ProductId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/ProductId;
    .locals 0

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableProductIdImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ProductId;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableProductIdImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/ProductId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/ProductId;
    .locals 0

    .line 26
    new-array p1, p1, [Lcom/audible/mobile/domain/ProductId;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableProductIdImpl$1;->newArray(I)[Lcom/audible/mobile/domain/ProductId;

    move-result-object p1

    return-object p1
.end method
