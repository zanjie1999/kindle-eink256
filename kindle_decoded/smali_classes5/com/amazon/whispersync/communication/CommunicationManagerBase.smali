.class public abstract Lcom/amazon/whispersync/communication/CommunicationManagerBase;
.super Ljava/lang/Object;
.source "CommunicationManagerBase.java"

# interfaces
.implements Lamazon/whispersync/communication/CommunicationManager;


# static fields
.field private static final METRICS_SOURCE_NAME:Ljava/lang/String; = "CommunicationManagerBase"


# instance fields
.field private final mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/whispersync/communication/CommunicationManagerBase;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    return-void
.end method


# virtual methods
.method public acquireConnectedConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/ConnectionPolicy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;I)Lamazon/whispersync/communication/connection/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    .line 54
    new-instance v0, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lamazon/whispersync/communication/connection/Policy$Builder;->fromConnectionPolicy(Lamazon/whispersync/communication/connection/ConnectionPolicy;)Lamazon/whispersync/communication/connection/Policy;

    move-result-object p2

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/communication/CommunicationManagerBase;->acquireConnectedConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;I)Lamazon/whispersync/communication/connection/Connection;

    move-result-object p1

    return-object p1
.end method

.method public acquireConnectedConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;I)Lamazon/whispersync/communication/connection/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    .line 68
    new-instance v0, Lamazon/whispersync/communication/BlockingConnectionListener;

    invoke-direct {v0, p3, p4}, Lamazon/whispersync/communication/BlockingConnectionListener;-><init>(Lamazon/whispersync/communication/connection/Connection$ConnectionListener;I)V

    .line 70
    invoke-interface {p0, p1, p2, v0}, Lamazon/whispersync/communication/CommunicationManager;->acquireConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)Lamazon/whispersync/communication/connection/Connection;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/amazon/whispersync/communication/CommunicationManagerBase;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    const-string p3, "TCommServer"

    const-string p4, "CommunicationManagerBase"

    invoke-interface {p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p2

    .line 74
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lamazon/whispersync/communication/BlockingConnectionListener;->waitForConnectionOpen(Lamazon/whispersync/communication/connection/Connection;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    :try_end_0
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object p3, p0, Lcom/amazon/whispersync/communication/CommunicationManagerBase;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {p3, p2}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 79
    :try_start_1
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/Connection;->release()V

    .line 80
    new-instance p1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    invoke-direct {p1, p3}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p3

    .line 76
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/Connection;->release()V

    .line 77
    new-instance p1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    invoke-direct {p1, p3}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/Exception;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    iget-object p3, p0, Lcom/amazon/whispersync/communication/CommunicationManagerBase;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {p3, p2}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V

    throw p1
.end method
