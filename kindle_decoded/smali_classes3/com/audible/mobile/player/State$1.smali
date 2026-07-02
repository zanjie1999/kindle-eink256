.class Lcom/audible/mobile/player/State$1;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/player/State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/State;
    .locals 1

    .line 118
    invoke-static {}, Lcom/audible/mobile/player/State;->values()[Lcom/audible/mobile/player/State;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/State$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/State;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/player/State;
    .locals 0

    .line 124
    new-array p1, p1, [Lcom/audible/mobile/player/State;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/State$1;->newArray(I)[Lcom/audible/mobile/player/State;

    move-result-object p1

    return-object p1
.end method
