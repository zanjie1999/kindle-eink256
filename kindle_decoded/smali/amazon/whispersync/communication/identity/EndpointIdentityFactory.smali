.class public Lamazon/whispersync/communication/identity/EndpointIdentityFactory;
.super Ljava/lang/Object;
.source "EndpointIdentityFactory.java"


# direct methods
.method public static createFromUrn(Ljava/lang/String;)Lamazon/whispersync/communication/identity/EndpointIdentity;
    .locals 3

    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    invoke-static {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->matchesUrn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lamazon/whispersync/communication/identity/DeviceIdentity;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_0
    invoke-static {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->matchesUrn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lamazon/whispersync/communication/identity/ServiceIdentity;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 69
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 70
    new-instance v0, Lamazon/whispersync/communication/identity/UrlEndpointIdentity;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/identity/UrlEndpointIdentity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Urn should map to one of the sub-classes of EndpointIdentity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URN must be non-empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createServiceIdentity(Ljava/lang/String;)Lamazon/whispersync/communication/identity/ServiceIdentity;
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0, v0, v0, v0}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createServiceIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lamazon/whispersync/communication/identity/ServiceIdentity;

    move-result-object p0

    return-object p0
.end method

.method public static createServiceIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lamazon/whispersync/communication/identity/ServiceIdentity;
    .locals 7

    .line 197
    new-instance v6, Lamazon/whispersync/communication/identity/ServiceIdentity;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lamazon/whispersync/communication/identity/ServiceIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v6
.end method

.method public static createUrlEndpointIdentity(Ljava/lang/String;)Lamazon/whispersync/communication/identity/UrlEndpointIdentity;
    .locals 1

    .line 226
    new-instance v0, Lamazon/whispersync/communication/identity/UrlEndpointIdentity;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/identity/UrlEndpointIdentity;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
