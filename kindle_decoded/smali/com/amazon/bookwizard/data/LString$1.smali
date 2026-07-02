.class final Lcom/amazon/bookwizard/data/LString$1;
.super Ljava/lang/Object;
.source "LString.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/data/LString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/bookwizard/data/LString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/bookwizard/data/LString;
    .locals 2

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance v1, Lcom/amazon/bookwizard/data/LString;

    invoke-direct {v1, v0, p1}, Lcom/amazon/bookwizard/data/LString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/data/LString$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/bookwizard/data/LString;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/bookwizard/data/LString;
    .locals 0

    .line 49
    new-array p1, p1, [Lcom/amazon/bookwizard/data/LString;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/data/LString$1;->newArray(I)[Lcom/amazon/bookwizard/data/LString;

    move-result-object p1

    return-object p1
.end method
