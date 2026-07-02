.class public final Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SecureTransportProtos.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;",
        ">;",
        "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private certificateChain_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2768
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2907
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    .line 3014
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2769
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 2751
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2774
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2907
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    .line 3014
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2775
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 2751
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureCertificateChainIsMutable()V
    .locals 3

    .line 2909
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2910
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    .line 2911
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2779
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$3900()Z

    return-void
.end method


# virtual methods
.method public addAllCertificateChain(Ljava/lang/Iterable;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;"
        }
    .end annotation

    .line 2993
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->ensureCertificateChainIsMutable()V

    .line 2994
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2996
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 0

    .line 2850
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    .locals 2

    .line 2801
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    .line 2802
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2803
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    .locals 4

    .line 2809
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    .line 2810
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2813
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    .line 2814
    iget v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    .line 2816
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$4102(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 2820
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$4202(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2821
    invoke-static {v0, v3}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$4302(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;I)I

    .line 2822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 1

    .line 2827
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

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

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    .locals 1

    .line 2797
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2751
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2793
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasSignature()Z
    .locals 2

    .line 3023
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2762
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    const-class v2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    .line 2763
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2882
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 2

    .line 2862
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2863
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$4100(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2864
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2865
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$4100(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    .line 2866
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    goto :goto_0

    .line 2868
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->ensureCertificateChainIsMutable()V

    .line 2869
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->certificateChain_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$4100(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2871
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2873
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2874
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    .line 2876
    :cond_3
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->access$4400(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    .line 2877
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2894
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2900
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2896
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2897
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

    .line 2900
    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    .line 2902
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 1

    .line 2853
    instance-of v0, p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    if-eqz v0, :cond_0

    .line 2854
    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p0

    .line 2856
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

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 0

    .line 3071
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 0

    .line 2832
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3046
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->bitField0_:I

    .line 3047
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 3048
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3044
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 0

    .line 3066
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2751
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method
