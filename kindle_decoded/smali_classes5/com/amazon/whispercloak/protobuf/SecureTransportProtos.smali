.class public final Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;
.super Ljava/lang/Object;
.source "SecureTransportProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponseOrBuilder;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequestOrBuilder;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationDataOrBuilder;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponseOrBuilder;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequest;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeRequestOrBuilder;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;,
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessageOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_protobuf_AesGCMSecureMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_AesGCMSecureMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_AuthenticatedECDHEKeyExchangeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_AuthenticatedECDHEKeyExchangeRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_AuthenticatedECDHEKeyExchangeResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_AuthenticatedECDHEKeyExchangeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_KeyExchangeError_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_KeyExchangeError_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_ProvisionableDeviceAuthenticationData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_ProvisionableDeviceAuthenticationData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_UnauthenticatedECDHEKeyExchangeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_UnauthenticatedECDHEKeyExchangeRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_protobuf_UnauthenticatedECDHEKeyExchangeResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_protobuf_UnauthenticatedECDHEKeyExchangeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\n=WhisperCloakProtocolBuffersModel/schema/SecureTransport.proto\u0012\u0008protobuf\"^\n\u0013AesGCMSecureMessage\u0012\u001c\n\u0014initializationVector\u0018\u0001 \u0002(\u000c\u0012\u000f\n\u0007payload\u0018\u0002 \u0002(\u000c\u0012\u000b\n\u0003mac\u0018\u0003 \u0002(\u000c\u0012\u000b\n\u0003aad\u0018\u0004 \u0002(\u000c\"T\n$AuthenticatedECDHEKeyExchangeRequest\u0012\u0019\n\u0011derECDHEPublicKey\u0018\u0001 \u0002(\u000c\u0012\u0011\n\tsignature\u0018\u0002 \u0002(\u000c\"\u008a\u0001\n%AuthenticatedECDHEKeyExchangeResponse\u0012\u0019\n\u0011derECDHEPublicKey\u0018\u0001 \u0002(\u000c\u0012F\n\u001fauthenticationDataSecureMessage\u0018\u0002 \u0002(\u000b2\u001d.protobuf.AesGCMSecureMessage\"T\n%ProvisionableDeviceAuthenticationData\u0012\u0018\n\u0010certificateChain\u0018\u0001 \u0003(\u000c\u0012\u0011\n\tsignature\u0018\u0002 \u0002(\u000c\"V\n&UnauthenticatedECDHEKeyExchangeRequest\u0012\u0019\n\u0011derECDHEPublicKey\u0018\u0001 \u0002(\u000c\u0012\u0011\n\tsignature\u0018\u0002 \u0001(\u000c\"\u008c\u0001\n\'UnauthenticatedECDHEKeyExchangeResponse\u0012\u0019\n\u0011derECDHEPublicKey\u0018\u0001 \u0002(\u000c\u0012F\n\u001fauthenticationDataSecureMessage\u0018\u0002 \u0001(\u000b2\u001d.protobuf.AesGCMSecureMessage\"#\n\u0010KeyExchangeError\u0012\u000f\n\u0007message\u0018\u0001 \u0002(\tB9\n com.amazon.whispercloak.protobufB\u0015SecureTransportProtos"

    .line 5205
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 5228
    new-instance v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;

    invoke-direct {v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5237
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 5241
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AesGCMSecureMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5242
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "InitializationVector"

    const-string v3, "Payload"

    const-string v4, "Mac"

    const-string v5, "Aad"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AesGCMSecureMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5247
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5248
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Signature"

    const-string v3, "DerECDHEPublicKey"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5253
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5254
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "AuthenticationDataSecureMessage"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5259
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_ProvisionableDeviceAuthenticationData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5260
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v5, "CertificateChain"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_ProvisionableDeviceAuthenticationData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5265
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5266
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5271
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5272
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5277
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_KeyExchangeError_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5278
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Message"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_KeyExchangeError_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AesGCMSecureMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AesGCMSecureMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_AuthenticatedECDHEKeyExchangeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_ProvisionableDeviceAuthenticationData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_ProvisionableDeviceAuthenticationData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->internal_static_protobuf_UnauthenticatedECDHEKeyExchangeResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 5200
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
