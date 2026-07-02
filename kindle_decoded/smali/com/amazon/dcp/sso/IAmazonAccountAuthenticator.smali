.class public interface abstract Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub;
    }
.end annotation


# virtual methods
.method public abstract callGetCredentialsWebservice(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/dcp/sso/IWebserviceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
