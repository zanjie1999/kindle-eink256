.class public Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;
.super Ljava/lang/Object;
.source "CustomerProfileData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final penName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData$1;

    invoke-direct {v0}, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData$1;-><init>()V

    sput-object v0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    if-eq v1, v2, :cond_2

    return v0

    .line 53
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    .line 54
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    const-string/jumbo v2, "penName"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 69
    iget-object p2, p0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;->penName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
