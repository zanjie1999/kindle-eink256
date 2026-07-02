.class public Lamazon/whispersync/communication/srr/DeviceTCommSrrManager;
.super Lamazon/whispersync/communication/srr/TCommSrrManager;


# direct methods
.method public constructor <init>(Lamazon/whispersync/communication/CommunicationManager;Lamazon/whispersync/communication/connection/Policy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lamazon/whispersync/communication/srr/TCommSrrManager;-><init>(Lamazon/whispersync/communication/CommunicationManager;Lamazon/whispersync/communication/connection/Policy;)V

    return-void
.end method


# virtual methods
.method protected isAnonymousCredentialsAllowed(Lamazon/whispersync/communication/authentication/RequestContext;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lamazon/whispersync/communication/authentication/AccountRequestContext;

    if-eqz v1, :cond_0

    check-cast p1, Lamazon/whispersync/communication/authentication/AccountRequestContext;

    invoke-virtual {p1}, Lamazon/whispersync/communication/authentication/AccountRequestContext;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
