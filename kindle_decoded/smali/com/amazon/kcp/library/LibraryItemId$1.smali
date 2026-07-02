.class final Lcom/amazon/kcp/library/LibraryItemId$1;
.super Ljava/lang/Object;
.source "LibraryItemId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryItemId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kcp/library/LibraryItemId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kcp/library/LibraryItemId;
    .locals 2

    .line 78
    new-instance v0, Lcom/amazon/kcp/library/LibraryItemId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/LibraryItemId;-><init>(Landroid/os/Parcel;Lcom/amazon/kcp/library/LibraryItemId$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryItemId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kcp/library/LibraryItemId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kcp/library/LibraryItemId;
    .locals 0

    .line 83
    new-array p1, p1, [Lcom/amazon/kcp/library/LibraryItemId;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryItemId$1;->newArray(I)[Lcom/amazon/kcp/library/LibraryItemId;

    move-result-object p1

    return-object p1
.end method
