.class public interface abstract Lamazon/whispersync/communication/srr/SrrManager;
.super Ljava/lang/Object;
.source "SrrManager.java"


# virtual methods
.method public abstract makeRequestSync(Lamazon/whispersync/communication/srr/SrrRequest;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TimeoutException;,
            Lamazon/whispersync/communication/RequestFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation
.end method
