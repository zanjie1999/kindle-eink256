.class final Lcom/amazon/android/docviewer/mapper/PageIndex$1;
.super Ljava/lang/Object;
.source "PageIndex.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mapper/PageIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/android/docviewer/mapper/PageIndex;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    .line 156
    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v0, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 0

    .line 161
    new-array p1, p1, [Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex$1;->newArray(I)[Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    return-object p1
.end method
