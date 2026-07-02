.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;
.super Ljava/lang/Object;
.source "ProtocolBuffersSerializer.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;


# instance fields
.field private final mAuthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mBooleanSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCBLRegistrationDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mCBLRegistrationRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCBLRegistrationUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationKeySetSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataMapTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntegerSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionableCommandInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableCommandInterfaceUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionableDeviceAuthenticationDataTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionableEventInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionableEventNotificationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionableEventTypeCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningCommandResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningCommandSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningDoneFailureEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningFailureTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningStatusSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecureMessageSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whispercloak/SecureMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartProvisioningRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartProvisioningResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnauthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnauthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleNetworksUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhisperJoinBlePacketSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiConfigurationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiConnectionDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiConnectionUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiNetworkSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiScanResultCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConfiguration;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConfigurationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 78
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiNetwork;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiNetwork;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiNetworkSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 79
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiScanResultCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 80
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConnectionDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 81
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoSecureMessage;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mSecureMessageSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 82
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUuidCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 83
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationDetails;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 84
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationRequest;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/registration/ProtoCBLRegistrationRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 85
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisionableEventTypeCollection;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventTypeCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 86
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/ProtoProvisioningStatus;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/ProtoProvisioningStatus;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningStatusSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 87
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoUnauthenticatedEcdheKeyExchangeRequest;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoUnauthenticatedEcdheKeyExchangeRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUnauthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 88
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoUnauthenticatedEcdheKeyExchangeResponse;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoUnauthenticatedEcdheKeyExchangeResponse;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUnauthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 89
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeRequest;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mAuthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 90
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeResponse;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoAuthenticatedEcdheKeyExchangeResponse;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mAuthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 91
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoConfigurationKeySet;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoConfigurationKeySet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mConfigurationKeySetSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 92
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mDataMapTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 93
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConnectionDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;)V

    iput-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mDeviceDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 95
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/commands/ProtoProvisioningCommand;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/commands/ProtoProvisioningCommand;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningCommandSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 96
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/commands/ProtoProvisioningCommandResponse;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/commands/ProtoProvisioningCommandResponse;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningCommandResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 97
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoStartProvisioningRequest;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoStartProvisioningRequest;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStartProvisioningRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 98
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoWhisperJoinBlePacket;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoWhisperJoinBlePacket;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWhisperJoinBlePacketSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 99
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoStartProvisioningResponse;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/ProtoStartProvisioningResponse;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStartProvisioningResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 100
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventNotification;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventNotification;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventNotificationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 101
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoProvisionableDeviceAuthenticationData;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/crypto/ProtoProvisionableDeviceAuthenticationData;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableDeviceAuthenticationDataTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 104
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoCBLRegistrationUpdatedEvent;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 105
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableCommandInterfaceUpdatedEvent;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableCommandInterfaceUpdatedEvent;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableCommandInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 106
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisionableEventInterfaceUpdatedEvent;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 107
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mVisibleNetworksUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 108
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoWifiConnectionUpdatedEvent;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoWifiConnectionUpdatedEvent;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConnectionUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 109
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningFailureTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 110
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisioningDoneFailureEvent;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoProvisioningDoneFailureEvent;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoProvisioningFailure;)V

    iput-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningDoneFailureEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 113
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoInteger;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mIntegerSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 114
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoString;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoString;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStringSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    .line 115
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoBoolean;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoBoolean;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mBooleanSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    return-void
.end method


# virtual methods
.method public deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 197
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConfigurationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 199
    :cond_0
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiNetworkSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 201
    :cond_1
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiScanResultCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 203
    :cond_2
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConnectionDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 205
    :cond_3
    const-class v0, Lcom/amazon/whispercloak/SecureMessage;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mSecureMessageSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 207
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mBooleanSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 209
    :cond_5
    const-class v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mIntegerSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 211
    :cond_6
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStringSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 213
    :cond_7
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUuidCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 215
    :cond_8
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 217
    :cond_9
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 219
    :cond_a
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventTypeCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 221
    :cond_b
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 222
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 223
    :cond_c
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableCommandInterfaceUpdatedEvent;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 224
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableCommandInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 225
    :cond_d
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 226
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 227
    :cond_e
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 228
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mVisibleNetworksUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 229
    :cond_f
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 230
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConnectionUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 231
    :cond_10
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningFailureTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 233
    :cond_11
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 234
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningDoneFailureEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 235
    :cond_12
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 236
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningStatusSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 237
    :cond_13
    invoke-virtual {p2}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 238
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUnauthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 239
    :cond_14
    invoke-virtual {p2}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 240
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUnauthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 241
    :cond_15
    invoke-virtual {p2}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 242
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mAuthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 243
    :cond_16
    invoke-virtual {p2}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 244
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mAuthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 245
    :cond_17
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 246
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mConfigurationKeySetSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 247
    :cond_18
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 248
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mDataMapTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 249
    :cond_19
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 250
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mDeviceDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 251
    :cond_1a
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 252
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningCommandSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1b
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 254
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningCommandResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 255
    :cond_1c
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 256
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStartProvisioningRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 257
    :cond_1d
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 258
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWhisperJoinBlePacketSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1e
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 260
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStartProvisioningResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 261
    :cond_1f
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 262
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventNotificationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 263
    :cond_20
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 264
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableDeviceAuthenticationDataTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 266
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find a serializer to deserialize object."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConfigurationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 125
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiNetworkSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 127
    :cond_2
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiScanResultCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 129
    :cond_3
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConnectionDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 131
    :cond_4
    instance-of v0, p1, Lcom/amazon/whispercloak/SecureMessage;

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mSecureMessageSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whispercloak/SecureMessage;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 133
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mBooleanSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 135
    :cond_6
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 136
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mIntegerSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 137
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 138
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStringSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 139
    :cond_8
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUuidCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 141
    :cond_9
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    if-eqz v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 143
    :cond_a
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    if-eqz v0, :cond_b

    .line 144
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 145
    :cond_b
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventTypeCollectionSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 147
    :cond_c
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    if-eqz v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mCBLRegistrationUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 149
    :cond_d
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableCommandInterfaceUpdatedEvent;

    if-eqz v0, :cond_e

    .line 150
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableCommandInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableCommandInterfaceUpdatedEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 151
    :cond_e
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    if-eqz v0, :cond_f

    .line 152
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventInterfaceUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventInterfaceUpdatedEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 153
    :cond_f
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;

    if-eqz v0, :cond_10

    .line 154
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mVisibleNetworksUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 155
    :cond_10
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;

    if-eqz v0, :cond_11

    .line 156
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWifiConnectionUpdatedEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 157
    :cond_11
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    if-eqz v0, :cond_12

    .line 158
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningFailureTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 159
    :cond_12
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;

    if-eqz v0, :cond_13

    .line 160
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningDoneFailureEventSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 161
    :cond_13
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;

    if-eqz v0, :cond_14

    .line 162
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningStatusSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 163
    :cond_14
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;

    if-eqz v0, :cond_15

    .line 164
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUnauthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 165
    :cond_15
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    if-eqz v0, :cond_16

    .line 166
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mUnauthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 167
    :cond_16
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    if-eqz v0, :cond_17

    .line 168
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mAuthenticatedEcdheKeyExchangeRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 169
    :cond_17
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;

    if-eqz v0, :cond_18

    .line 170
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mAuthenticatedEcdheKeyExchangeResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeResponse;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 171
    :cond_18
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;

    if-eqz v0, :cond_19

    .line 172
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mConfigurationKeySetSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 173
    :cond_19
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    if-eqz v0, :cond_1a

    .line 174
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mDataMapTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 175
    :cond_1a
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    if-eqz v0, :cond_1b

    .line 176
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mDeviceDetailsSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 177
    :cond_1b
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    if-eqz v0, :cond_1c

    .line 178
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningCommandSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommand;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 179
    :cond_1c
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    if-eqz v0, :cond_1d

    .line 180
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisioningCommandResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 181
    :cond_1d
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;

    if-eqz v0, :cond_1e

    .line 182
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStartProvisioningRequestSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 183
    :cond_1e
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    if-eqz v0, :cond_1f

    .line 184
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mWhisperJoinBlePacketSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 185
    :cond_1f
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;

    if-eqz v0, :cond_20

    .line 186
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mStartProvisioningResponseSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 187
    :cond_20
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    if-eqz v0, :cond_21

    .line 188
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableEventNotificationSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 189
    :cond_21
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    if-eqz v0, :cond_22

    .line 190
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;->mProvisionableDeviceAuthenticationDataTypeSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 192
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not find a serializer to serialize object."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
