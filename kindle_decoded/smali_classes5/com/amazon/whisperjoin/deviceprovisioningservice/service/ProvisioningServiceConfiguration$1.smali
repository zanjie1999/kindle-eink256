.class final Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;
.super Ljava/lang/Object;
.source "ProvisioningServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 1

    if-eqz p1, :cond_0

    .line 270
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 271
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getFromBundle(Landroid/os/Bundle;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 1

    if-ltz p1, :cond_0

    .line 281
    new-array p1, p1, [Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    return-object p1

    .line 278
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "size cannot be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$1;->newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p1

    return-object p1
.end method
