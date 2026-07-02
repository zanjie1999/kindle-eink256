.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
.super Ljava/lang/Object;
.source "WorkflowConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final mBarcodeString:Ljava/lang/String;

.field private final mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

.field private final mDeviceId:Ljava/lang/String;

.field private final mDistressState:Ljava/lang/String;

.field private final mPin:Ljava/lang/String;

.field private final mProductId:Ljava/lang/String;

.field private final mPublicKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 41
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPublicKey:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPin:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mProductId:Ljava/lang/String;

    if-nez p5, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->attemptToGenerateDeviceIdFromBarcodeData()Ljava/lang/String;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDeviceId:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBarcodeString:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDistressState:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException;
        }
    .end annotation

    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private attemptToGenerateDeviceIdFromBarcodeData()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasBarcodeData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPublicKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 133
    new-instance v2, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 134
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "ECDSA"

    const-string v3, "SC"

    .line 135
    invoke-static {v0, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 138
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "\n"

    const-string v3, ""

    .line 140
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/AuthMaterialIndexGenerator;->generate([B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 144
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 146
    :goto_0
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;
    .locals 1

    .line 50
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createDeviceFilter()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasProductId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByProductIndex;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mProductId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByProductIndex;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)V

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByDeviceIdentity;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByDeviceIdentity;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)V

    return-object v0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasDistressState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByDistressState;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDistressState:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterByDistressState;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)V

    return-object v0

    .line 111
    :cond_2
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterAcceptAllDevices;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/filters/FilterAcceptAllDevices;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)V

    return-object v0
.end method

.method public getBarcodeString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBarcodeString:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPin:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public hasBarcodeData()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPin:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPublicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasDistressState()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDistressState:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProductId()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mProductId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPublicKey:Ljava/lang/String;

    const-string v2, "mPublicKey"

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mPin:Ljava/lang/String;

    const-string v2, "mPin"

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mProductId:Ljava/lang/String;

    const-string v2, "mProductId"

    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDeviceId:Ljava/lang/String;

    const-string v2, "mDeviceId"

    .line 120
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBarcodeString:Ljava/lang/String;

    const-string v2, "mBarcodeString"

    .line 121
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mDistressState:Ljava/lang/String;

    const-string v2, "mDistressState"

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 123
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBeaconType"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 124
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
