.class final Lcom/amazon/kindle/cms/ipc/BulkEntry$1;
.super Ljava/lang/Object;
.source "BulkEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/BulkEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/cms/ipc/BulkEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/cms/ipc/BulkEntry;
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/kindle/cms/ipc/BulkEntry;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/BulkEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/BulkEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/cms/ipc/BulkEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/cms/ipc/BulkEntry;
    .locals 0

    .line 25
    new-array p1, p1, [Lcom/amazon/kindle/cms/ipc/BulkEntry;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/BulkEntry$1;->newArray(I)[Lcom/amazon/kindle/cms/ipc/BulkEntry;

    move-result-object p1

    return-object p1
.end method
