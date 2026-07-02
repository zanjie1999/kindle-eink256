.class public interface abstract Lamazon/whispersync/communication/authentication/RequestSigner;
.super Ljava/lang/Object;
.source "RequestSigner.java"


# virtual methods
.method public abstract signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation
.end method
