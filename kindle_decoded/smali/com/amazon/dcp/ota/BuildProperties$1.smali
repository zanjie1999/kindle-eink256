.class final Lcom/amazon/dcp/ota/BuildProperties$1;
.super Ljava/lang/Object;
.source "BuildProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/ota/BuildProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/dcp/ota/BuildProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/BuildProperties;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/amazon/dcp/ota/BuildProperties;->access$000(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/BuildProperties;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/dcp/ota/BuildProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/BuildProperties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/dcp/ota/BuildProperties;
    .locals 0

    .line 26
    new-array p1, p1, [Lcom/amazon/dcp/ota/BuildProperties;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/dcp/ota/BuildProperties$1;->newArray(I)[Lcom/amazon/dcp/ota/BuildProperties;

    move-result-object p1

    return-object p1
.end method
