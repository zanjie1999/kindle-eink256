.class Lcom/amazon/dcp/ota/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/dcp/ota/BuildProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x1


# instance fields
.field private final mProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/dcp/ota/BuildProperties$1;

    invoke-direct {v0}, Lcom/amazon/dcp/ota/BuildProperties$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/ota/BuildProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "properties may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/amazon/dcp/ota/BuildProperties;->mProperties:Ljava/util/HashMap;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/dcp/ota/BuildProperties;->mProperties:Ljava/util/HashMap;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/BuildProperties;
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/amazon/dcp/ota/BuildProperties;->fromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/BuildProperties;

    move-result-object p0

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/BuildProperties;
    .locals 7

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/UnsupportedOperationException;

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

    invoke-static {v2, v3, v4, v0, v1}, Lcom/amazon/dcp/framework/Checks;->checkEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v0, Lcom/amazon/dcp/ota/BuildProperties;

    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/amazon/dcp/ota/BuildProperties;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/4 p2, 0x1

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object p2, p0, Lcom/amazon/dcp/ota/BuildProperties;->mProperties:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
