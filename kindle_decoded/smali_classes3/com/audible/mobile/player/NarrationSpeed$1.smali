.class Lcom/audible/mobile/player/NarrationSpeed$1;
.super Ljava/lang/Object;
.source "NarrationSpeed.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/NarrationSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/player/NarrationSpeed;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/NarrationSpeed;
    .locals 0

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/audible/mobile/player/NarrationSpeed;->from(I)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/NarrationSpeed$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/player/NarrationSpeed;
    .locals 0

    .line 40
    new-array p1, p1, [Lcom/audible/mobile/player/NarrationSpeed;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/NarrationSpeed$1;->newArray(I)[Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object p1

    return-object p1
.end method
