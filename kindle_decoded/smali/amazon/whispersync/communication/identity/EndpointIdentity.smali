.class public abstract Lamazon/whispersync/communication/identity/EndpointIdentity;
.super Ljava/lang/Object;
.source "EndpointIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    return v0

    :cond_3
    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public abstract getType()Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
.end method

.method public hashCode()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
