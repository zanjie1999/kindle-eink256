.class Lcom/audible/mobile/download/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/download/Request;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/Request;
    .locals 4

    .line 18
    const-class v0, Lcom/audible/mobile/download/Request$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/download/ContentType;

    .line 19
    const-class v1, Lcom/audible/mobile/download/Request$1;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/domain/Asin;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 21
    const-class v3, Lcom/audible/mobile/download/Request$1;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/domain/CustomerId;

    .line 22
    new-instance v3, Lcom/audible/mobile/download/Request;

    invoke-direct {v3, v0, p1, v1}, Lcom/audible/mobile/download/Request;-><init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V

    .line 23
    invoke-virtual {v3, v2}, Lcom/audible/mobile/download/Request;->setOptionalPayload(Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/Request$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/Request;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/download/Request;
    .locals 0

    .line 30
    new-array p1, p1, [Lcom/audible/mobile/download/Request;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/Request$1;->newArray(I)[Lcom/audible/mobile/download/Request;

    move-result-object p1

    return-object p1
.end method
