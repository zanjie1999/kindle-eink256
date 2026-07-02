.class final Lcom/amazon/kindle/observablemodel/ItemID$1;
.super Ljava/lang/Object;
.source "ItemID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/ItemID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 120
    new-instance v0, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/ItemID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 0

    .line 124
    new-array p1, p1, [Lcom/amazon/kindle/observablemodel/ItemID;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/ItemID$1;->newArray(I)[Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method
