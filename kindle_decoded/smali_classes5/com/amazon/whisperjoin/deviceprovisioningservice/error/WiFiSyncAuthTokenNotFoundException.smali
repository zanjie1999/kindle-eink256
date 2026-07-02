.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenNotFoundException;
.super Ljava/lang/Exception;
.source "WiFiSyncAuthTokenNotFoundException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 11
    instance-of p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenNotFoundException;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
