.class final Lcom/amazon/dcp/messaging/OdotTransport$1;
.super Ljava/lang/Object;
.source "OdotTransport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/messaging/OdotTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/dcp/messaging/OdotTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/messaging/OdotTransport;
    .locals 0

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/dcp/messaging/OdotTransport;->fromValue(I)Lcom/amazon/dcp/messaging/OdotTransport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/dcp/messaging/OdotTransport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/messaging/OdotTransport;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/dcp/messaging/OdotTransport;
    .locals 0

    .line 28
    new-array p1, p1, [Lcom/amazon/dcp/messaging/OdotTransport;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/dcp/messaging/OdotTransport$1;->newArray(I)[Lcom/amazon/dcp/messaging/OdotTransport;

    move-result-object p1

    return-object p1
.end method
