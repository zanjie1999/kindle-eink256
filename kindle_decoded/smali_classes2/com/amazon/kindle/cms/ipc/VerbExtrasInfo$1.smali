.class final Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo$1;
.super Ljava/lang/Object;
.source "VerbExtrasInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;
    .locals 0

    .line 35
    new-array p1, p1, [Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo$1;->newArray(I)[Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;

    move-result-object p1

    return-object p1
.end method
