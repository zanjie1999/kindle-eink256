.class Lcom/audible/mobile/player/AudioDataSource$1;
.super Ljava/lang/Object;
.source "AudioDataSource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/AudioDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/player/AudioDataSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/AudioDataSource;
    .locals 9

    .line 27
    const-class v0, Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 28
    new-instance v8, Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/audible/mobile/domain/ACR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/net/Uri;

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/audible/mobile/player/AudioContentType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;Ljava/lang/String;)V

    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/AudioDataSource$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/player/AudioDataSource;
    .locals 0

    .line 34
    new-array p1, p1, [Lcom/audible/mobile/player/AudioDataSource;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/AudioDataSource$1;->newArray(I)[Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    return-object p1
.end method
