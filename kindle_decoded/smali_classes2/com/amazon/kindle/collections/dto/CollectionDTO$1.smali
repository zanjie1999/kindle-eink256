.class final Lcom/amazon/kindle/collections/dto/CollectionDTO$1;
.super Ljava/lang/Object;
.source "CollectionDTO.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/collections/dto/CollectionDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/collections/dto/CollectionDTO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/collections/dto/CollectionDTO;
    .locals 2

    .line 247
    new-instance v0, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Landroid/os/Parcel;Lcom/amazon/kindle/collections/dto/CollectionDTO$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/collections/dto/CollectionDTO;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/amazon/kindle/collections/dto/CollectionDTO;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO$1;->newArray(I)[Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object p1

    return-object p1
.end method
