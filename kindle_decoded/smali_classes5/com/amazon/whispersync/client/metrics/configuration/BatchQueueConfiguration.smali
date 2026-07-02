.class public Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;
.super Ljava/lang/Object;
.source "BatchQueueConfiguration.java"


# instance fields
.field private mBatchQueueType:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

.field private mDirectoryPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 20
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;->mBatchQueueType:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    .line 21
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;->mDirectoryPrefix:Ljava/lang/String;

    return-void

    .line 17
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "directoryPrefix is null in configuration"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string p2, "batchQueueType is null in configuration"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBatchQueueType()Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;->mBatchQueueType:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    return-object v0
.end method

.method public getDirectoryPrefix()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;->mDirectoryPrefix:Ljava/lang/String;

    return-object v0
.end method
