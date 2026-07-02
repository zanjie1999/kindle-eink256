.class final Lcom/amazon/system/drawing/Rectangle$1;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/system/drawing/Rectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/system/drawing/Rectangle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/system/drawing/Rectangle;
    .locals 2

    .line 304
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Landroid/os/Parcel;Lcom/amazon/system/drawing/Rectangle$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/system/drawing/Rectangle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/system/drawing/Rectangle;
    .locals 0

    .line 309
    new-array p1, p1, [Lcom/amazon/system/drawing/Rectangle;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/system/drawing/Rectangle$1;->newArray(I)[Lcom/amazon/system/drawing/Rectangle;

    move-result-object p1

    return-object p1
.end method
