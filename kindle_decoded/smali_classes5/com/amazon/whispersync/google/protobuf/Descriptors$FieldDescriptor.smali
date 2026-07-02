.class public final Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;
.implements Ljava/lang/Comparable;
.implements Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;,
        Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final table:[Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;


# instance fields
.field private containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private defaultValue:Ljava/lang/Object;

.field private enumType:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

.field private final extensionScope:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private final file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private messageType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private type:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->values()[Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Desrciptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->index:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/Descriptors;->access$1400(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object p4

    invoke-static {p4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->valueOf(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p4

    const/4 v0, 0x0

    if-lez p4, :cond_7

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p4

    invoke-virtual {p4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {p1, p0, p2, v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result p1

    if-eqz p5, :cond_4

    if-eqz p1, :cond_3

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz p3, :cond_5

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw p1

    :cond_4
    if-nez p1, :cond_6

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    :cond_5
    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    :goto_1
    invoke-static {p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    :cond_6
    new-instance p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;IZLcom/amazon/whispersync/google/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->crossLink()V

    return-void
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    instance-of v4, v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v4

    if-nez v4, :cond_5

    instance-of v4, v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    :goto_1
    iput-object v4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_2

    :cond_3
    instance-of v4, v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_8

    instance-of v4, v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v4, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v4, :cond_a

    instance-of v1, v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1c

    :goto_3
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_13

    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "nan"

    const-string v4, "-inf"

    const-string v5, "inf"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_c

    goto/16 :goto_6

    :cond_c
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown enum default value: \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4, v0, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_8
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_9
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_a
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse default value: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v1

    :cond_13
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_6

    :cond_15
    sget-object v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->access$1700(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_16
    iput-object v3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :goto_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addFieldByNumber(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    :cond_18
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_19

    goto :goto_7

    :cond_19
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_1a
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_1b
    :goto_7
    return-void

    :cond_1c
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 2

    iget-object v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->compareTo(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)I

    move-result p1

    return p1
.end method

.method public getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnumType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of enum type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getEnumType()Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionScope()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not an extension."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->index:I

    return v0
.end method

.method public getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteJavaType()Lcom/amazon/whispersync/google/protobuf/WireFormat$JavaType;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/amazon/whispersync/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;
    .locals 2

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public internalMergeFrom(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/MessageLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    check-cast p2, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isExtension()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public isOptional()Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPackable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPacked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0
.end method

.method public isRepeated()Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method
