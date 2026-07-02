.class public interface abstract Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;
.super Ljava/lang/Object;
.source "DiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;,
        Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;,
        Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;
    }
.end annotation


# virtual methods
.method public abstract start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
