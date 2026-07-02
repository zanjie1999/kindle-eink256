.class public final Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SecureTransportProtos.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;",
        ">;",
        "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

.field private bitField0_:I

.field private derECDHEPublicKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4296
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    .line 4347
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 4152
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 4134
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 4157
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 4296
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    const/4 p1, 0x0

    .line 4347
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 4158
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 4134
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getAuthenticationDataSecureMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4490
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4491
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4493
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v1

    .line 4494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4495
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4496
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 4498
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 4162
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->access$6100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4163
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->getAuthenticationDataSecureMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 0

    .line 4241
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;
    .locals 2

    .line 4189
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    .line 4190
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4191
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;
    .locals 4

    .line 4197
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    .line 4198
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4203
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->access$6302(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 4207
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 4208
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->access$6402(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    goto :goto_1

    .line 4210
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->access$6402(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 4212
    :goto_1
    invoke-static {v0, v3}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->access$6502(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;I)I

    .line 4213
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 1

    .line 4218
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    .locals 1

    .line 4368
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4369
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4371
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;
    .locals 1

    .line 4185
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4181
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$5700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthenticationDataSecureMessage()Z
    .locals 2

    .line 4358
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDerECDHEPublicKey()Z
    .locals 2

    .line 4305
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4145
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$5800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    const-class v2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    .line 4146
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4266
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->hasDerECDHEPublicKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4269
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->hasAuthenticationDataSecureMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4270
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAuthenticationDataSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 3

    .line 4420
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 4421
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    if-eqz v0, :cond_0

    .line 4423
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4424
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 4425
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->newBuilder(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    goto :goto_0

    .line 4427
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 4429
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 4431
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4433
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 1

    .line 4253
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4254
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->hasDerECDHEPublicKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4255
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setDerECDHEPublicKey(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    .line 4257
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->hasAuthenticationDataSecureMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4258
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeAuthenticationDataSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    .line 4260
    :cond_2
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->access$6600(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    .line 4261
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4283
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4289
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4285
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4286
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 4289
    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    .line 4291
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 1

    .line 4244
    instance-of v0, p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    if-eqz v0, :cond_0

    .line 4245
    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p0

    .line 4247
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4134
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4134
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4134
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 0

    .line 4507
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAuthenticationDataSecureMessage(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 1

    .line 4382
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4386
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 4387
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4384
    throw p1

    .line 4389
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 4391
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDerECDHEPublicKey(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4328
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->bitField0_:I

    .line 4329
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    .line 4330
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4326
    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 0

    .line 4223
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 0

    .line 4502
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4134
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method
