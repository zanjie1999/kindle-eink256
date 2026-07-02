.class Lcom/audible/mobile/domain/ImmutableACRImpl$1;
.super Ljava/lang/Object;
.source "ImmutableACRImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableACRImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/ACR;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/ACR;
    .locals 0

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableACRImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/ACR;
    .locals 0

    .line 28
    new-array p1, p1, [Lcom/audible/mobile/domain/ACR;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableACRImpl$1;->newArray(I)[Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    return-object p1
.end method
