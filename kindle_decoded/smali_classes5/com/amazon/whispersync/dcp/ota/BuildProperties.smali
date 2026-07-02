.class public Lcom/amazon/whispersync/dcp/ota/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/BuildProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x2


# instance fields
.field private final mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/BuildProperties$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "properties may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/BuildProperties;
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->fromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    move-result-object p0

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/BuildProperties;
    .locals 7

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/UnsupportedOperationException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v1, v6

    const-string v0, "Expected parcel v%d, but received v%d."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "ro.build.type"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductDevice()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "ro.product.device"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "ro.product.model"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "ro.product.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureType()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "ro.build.lab126.sign.type"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "ro.build.version.incremental"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionNumber()Ljava/lang/Integer;
    .locals 2

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "ro.build.version.number"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x2

    .line 97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->mProperties:Ljava/util/Properties;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
