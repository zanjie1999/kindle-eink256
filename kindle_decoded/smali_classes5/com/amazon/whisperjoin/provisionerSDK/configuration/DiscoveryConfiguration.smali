.class public Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;
.super Ljava/lang/Object;
.source "DiscoveryConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

.field private final mRadioConfigurations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 29
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mRadioConfigurations:Ljava/util/Collection;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mRadioConfigurations:Ljava/util/Collection;

    .line 30
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mScanFilters:Ljava/util/List;

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mScanFilters:Ljava/util/List;

    .line 32
    iget-object p1, p1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    return-object v0
.end method

.method public getOveractiveConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    return-object v0
.end method

.method public getScanFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->mScanFilters:Ljava/util/List;

    return-object v0
.end method
