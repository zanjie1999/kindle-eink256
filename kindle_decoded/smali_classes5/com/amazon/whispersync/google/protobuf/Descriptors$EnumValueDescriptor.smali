.class public final Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;
.implements Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field private final type:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->index:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)V

    invoke-static {p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addEnumValueByNumber(Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;ILcom/amazon/whispersync/google/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method
