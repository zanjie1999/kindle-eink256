.class public Lcom/amazon/whispersync/communication/AndroidIdentityResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lamazon/whispersync/communication/identity/IdentityResolver;


# instance fields
.field protected final mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->unbindTCommService()V

    return-void
.end method

.method public getEndpointForServiceName(Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;->getEndpointForServiceNameDomainAndRealm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    move-result-object p1

    return-object p1
.end method

.method protected getEndpointForServiceNameDomainAndRealm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->bindTCommService()V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->waitForService()V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/communication/ICommunicationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/ICommunicationService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/whispersync/communication/ICommunicationService;->getIdentityResolver()Lcom/amazon/whispersync/communication/ir/IIdentityResolver;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/communication/ir/IIdentityResolver;->resolveServiceEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lamazon/whispersync/communication/TCommServiceDownException;

    const-string p2, "Acquired null instance of ICommunicationService"

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/TCommServiceDownException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lamazon/whispersync/communication/TCommServiceDownException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public resolveServiceEndpoint(Lamazon/whispersync/communication/identity/ServiceIdentity;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;
    .locals 2

    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getRealm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;->getEndpointForServiceNameDomainAndRealm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    move-result-object p1

    return-object p1
.end method
