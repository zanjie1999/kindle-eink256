.class public final Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;
.super Ljava/lang/Object;
.source "ProvisioningServiceConfigurationFactory.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;

.field private static final PROVISIONER_APP_NAME:Ljava/lang/String; = "KindleAndroidApp"

.field private static final PROVISIONER_DEVICE_GROUP:Ljava/lang/String; = "KAR"

.field private static final PROVISIONER_VERSION_NUMBER:Ljava/lang/String; = "1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;->INSTANCE:Lcom/amazon/kindle/ffs/ProvisioningServiceConfigurationFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 17
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;-><init>()V

    .line 18
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleInfo$Locale;->getLocaleConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setLocaleConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    .line 19
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;->prod(Z)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setDssServiceConfiguration(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v0, "KindleAndroidApp"

    .line 20
    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerApplicationName(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v0, "1.0"

    .line 21
    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerVersionNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    const-string v0, "KAR"

    .line 22
    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setProvisionerDeviceGroup(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    .line 23
    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->setDebugEnabled(Z)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;

    .line 24
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration$Builder;->createProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object p1

    const-string v0, "ProvisioningServiceConfi\u2026ingServiceConfiguration()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
