.class Lcom/audible/mobile/domain/ImmutableTimeImpl$1;
.super Ljava/lang/Object;
.source "ImmutableTimeImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/domain/ImmutableTimeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/domain/Time;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/Time;
    .locals 3

    .line 21
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableTimeImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/domain/Time;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/domain/Time;
    .locals 0

    .line 27
    new-array p1, p1, [Lcom/audible/mobile/domain/Time;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/audible/mobile/domain/ImmutableTimeImpl$1;->newArray(I)[Lcom/audible/mobile/domain/Time;

    move-result-object p1

    return-object p1
.end method
