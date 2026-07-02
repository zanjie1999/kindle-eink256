.class public Lcom/amazon/whispersync/dcp/ota/Sideload;
.super Ljava/lang/Object;
.source "Sideload.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/Sideload;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x1


# instance fields
.field private mFile:Ljava/io/File;

.field private final mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/Sideload$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/Sideload$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/Sideload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/amazon/whispersync/dcp/ota/BuildProperties;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "file may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "properties may not be null"

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mFile:Ljava/io/File;

    .line 39
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/Sideload;
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/ota/Sideload;->fromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/Sideload;

    move-result-object p0

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/dcp/ota/Sideload;
    .locals 7

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "Expected parcel v%d, but received v%d."

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/Sideload;

    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-class v2, Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/dcp/ota/Sideload;-><init>(Ljava/io/File;Lcom/amazon/whispersync/dcp/ota/BuildProperties;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->getBuildType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getProductDevice()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->getProductModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->getSignatureType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionNumber()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->getVersionNumber()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method isPropertiesEmpty()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/ota/BuildProperties;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 3

    .line 51
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "file may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mFile:Ljava/io/File;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, 0x1

    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/ota/Sideload;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 107
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/ota/Sideload;->mProperties:Lcom/amazon/whispersync/dcp/ota/BuildProperties;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
