.class public interface abstract Lamazon/whispersync/communication/connection/ConnectionPolicy;
.super Ljava/lang/Object;
.source "ConnectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;
    }
.end annotation


# virtual methods
.method public abstract getCompressionOption()Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;
.end method

.method public abstract getPriority()Lamazon/whispersync/communication/connection/Priority;
.end method

.method public abstract isAnonymousCredentialsAllowed()Z
.end method

.method public abstract isClearText()Z
.end method

.method public abstract isLowLatencyNecessary()Z
.end method

.method public abstract isRequestResponseOnly()Z
.end method

.method public abstract isWiFiNecessary()Z
.end method
