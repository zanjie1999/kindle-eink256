.class public interface abstract Lcom/audible/pfm/network/IPfmDownloadClient;
.super Ljava/lang/Object;
.source "IPfmDownloadClient.java"


# virtual methods
.method public abstract getEndpointConfigSyncForce()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEndpointConfigSyncNonForce(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
