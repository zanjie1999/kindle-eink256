.class public final Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;
.super Ljava/lang/Object;
.source "WifiConfigurationFactory.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->INSTANCE:Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final generateWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 2

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyManagement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p2}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->addQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createWpaWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WEP:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 51
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->access$getWEP_ASCII_KEY_LENGTHS$p()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 52
    invoke-direct {p0, p2}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->addQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createWepWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->access$getWEP_HEX_KEY_LENGTHS$p()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 54
    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createWepWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createOpenWifiConfiguration(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    return-object p1

    .line 60
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final isValidWifiKey(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "keyManagement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return v1

    .line 27
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->addQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidPsk(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 15
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->access$getWEP_ASCII_KEY_LENGTHS$p()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    invoke-direct {p0, p2}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->addQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidWepKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactoryKt;->access$getWEP_HEX_KEY_LENGTHS$p()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-static {p2}, Lcom/amazon/whisperjoin/utils/InputValidator;->isValidWepKey(Ljava/lang/String;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method
