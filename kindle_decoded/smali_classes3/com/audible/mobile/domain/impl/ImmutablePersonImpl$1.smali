.class Lcom/audible/mobile/domain/impl/ImmutablePersonImpl$1;
.super Ljava/lang/Object;
.source "ImmutablePersonImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;
    .locals 2

    .line 16
    new-instance v0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;-><init>(Landroid/os/Parcel;Lcom/audible/mobile/domain/impl/ImmutablePersonImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;
    .locals 0

    .line 22
    new-array p1, p1, [Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl$1;->newArray(I)[Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;

    move-result-object p1

    return-object p1
.end method
