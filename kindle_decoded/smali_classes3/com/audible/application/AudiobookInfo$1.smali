.class final Lcom/audible/application/AudiobookInfo$1;
.super Ljava/lang/Object;
.source "AudiobookInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/application/AudiobookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/application/AudiobookInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/application/AudiobookInfo;
    .locals 1

    .line 46
    new-instance v0, Lcom/audible/application/AudiobookInfo;

    invoke-direct {v0}, Lcom/audible/application/AudiobookInfo;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lcom/audible/application/AudiobookInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/audible/application/AudiobookInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/application/AudiobookInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/application/AudiobookInfo;
    .locals 0

    .line 54
    new-array p1, p1, [Lcom/audible/application/AudiobookInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/audible/application/AudiobookInfo$1;->newArray(I)[Lcom/audible/application/AudiobookInfo;

    move-result-object p1

    return-object p1
.end method
