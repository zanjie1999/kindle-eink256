.class public interface abstract Lamazon/whispersync/communication/identity/IRServiceEndpoint;
.super Ljava/lang/Object;
.source "IRServiceEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;,
        Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;,
        Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;,
        Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
    }
.end annotation


# virtual methods
.method public abstract getClearTextConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;
.end method

.method public abstract getDataCompression()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DataCompression;
.end method

.method public abstract getDirectConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$DirectConnection;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getHostname()Ljava/lang/String;
.end method

.method public abstract getPort()Ljava/lang/Integer;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getSecurePort()Ljava/lang/Integer;
.end method

.method public abstract getTimeout()I
.end method

.method public abstract toResolvedUri(Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;)Ljava/lang/String;
.end method
