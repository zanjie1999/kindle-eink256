.class final Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$1;
.super Ljava/lang/Object;
.source "AuthMaterialIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;
    .locals 2

    .line 80
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;-><init>(Landroid/os/Parcel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;
    .locals 0

    .line 85
    new-array p1, p1, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier$1;->newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    move-result-object p1

    return-object p1
.end method
