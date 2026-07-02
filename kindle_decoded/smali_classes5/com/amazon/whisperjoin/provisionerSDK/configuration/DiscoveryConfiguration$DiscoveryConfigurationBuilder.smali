.class public Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;
.super Ljava/lang/Object;
.source "DiscoveryConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscoveryConfigurationBuilder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

.field mRadioConfigurations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field mScanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mRadioConfigurations:Ljava/util/Collection;

    .line 46
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mScanFilters:Ljava/util/List;

    .line 48
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mScanFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;)V

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mScanFilters can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observers must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mContext:Landroid/content/Context;

    return-object p0

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    return-object p0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "observers can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withOveractiveConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    return-object p0
.end method

.method public withScanFilters(Ljava/util/List;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mScanFilters:Ljava/util/List;

    return-object p0

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "scanFilters can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
