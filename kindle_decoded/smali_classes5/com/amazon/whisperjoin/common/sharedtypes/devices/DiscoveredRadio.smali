.class public Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;
.super Ljava/lang/Object;
.source "DiscoveredRadio.java"


# instance fields
.field private mFreshness:Ljava/util/Date;

.field private final mRadio:Ljava/lang/String;

.field private final mRadioHandle:Ljava/lang/Object;

.field private mSignalStrength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mRadio:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mRadioHandle:Ljava/lang/Object;

    .line 18
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mFreshness:Ljava/util/Date;

    .line 19
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mSignalStrength:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "radio handle can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mRadio:Ljava/lang/String;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mRadio:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFreshness()Ljava/util/Date;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mFreshness:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mRadio:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioHandle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HandleType:",
            "Ljava/lang/Object;",
            ">()THandleType;"
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mRadioHandle:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mRadio:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method updateFreshness(Ljava/util/Date;)V
    .locals 0

    .line 55
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mFreshness:Ljava/util/Date;

    return-void
.end method

.method updateSignalStrength(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->mSignalStrength:I

    return-void
.end method
