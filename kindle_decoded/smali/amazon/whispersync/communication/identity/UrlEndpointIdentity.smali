.class public Lamazon/whispersync/communication/identity/UrlEndpointIdentity;
.super Lamazon/whispersync/communication/identity/EndpointIdentity;
.source "UrlEndpointIdentity.java"


# instance fields
.field private final mUrn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lamazon/whispersync/communication/identity/EndpointIdentity;-><init>()V

    .line 24
    iput-object p1, p0, Lamazon/whispersync/communication/identity/UrlEndpointIdentity;->mUrn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
    .locals 1

    .line 29
    sget-object v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->URL:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lamazon/whispersync/communication/identity/UrlEndpointIdentity;->mUrn:Ljava/lang/String;

    return-object v0
.end method
