.class Lcom/audible/mobile/domain/ImmutableAccessTokenImpl$1;
.super Ljava/lang/Object;
.source "ImmutableAccessTokenImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableAccessTokenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/AccessToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/AccessToken;
    .locals 1

    .line 14
    new-instance v0, Lcom/audible/mobile/domain/ImmutableAccessTokenImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableAccessTokenImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableAccessTokenImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/AccessToken;
    .locals 0

    .line 20
    new-array p1, p1, [Lcom/audible/mobile/domain/AccessToken;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableAccessTokenImpl$1;->newArray(I)[Lcom/audible/mobile/domain/AccessToken;

    move-result-object p1

    return-object p1
.end method
