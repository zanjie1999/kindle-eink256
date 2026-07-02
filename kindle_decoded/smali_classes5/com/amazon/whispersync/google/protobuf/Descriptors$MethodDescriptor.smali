.class public final Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private inputType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private outputType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final service:Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->index:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->service:Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;ILcom/amazon/whispersync/google/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$2300(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    const-string v3, "\" is not a message type."

    const/16 v4, 0x22

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-void

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0
.end method

.method private setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->index:I

    return v0
.end method

.method public getInputType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getService()Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->service:Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    return-object v0
.end method

.method public toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;->toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method
