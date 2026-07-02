.class public final Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Descriptor"
.end annotation


# instance fields
.field private final containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private final enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

.field private final fields:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private final nestedTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->index:I

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/Descriptors;->access$1400(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result p3

    new-array p3, p3, [Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    if-ge p4, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, p4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0, p4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)V

    aput-object v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result p4

    new-array p4, p4, [Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    iput-object p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge p4, v0, :cond_1

    iget-object v6, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    new-instance v7, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, p4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;ILcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    aput-object v7, v6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result p4

    new-array p4, p4, [Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    iput-object p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fields:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    const/4 p4, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    if-ge p4, v0, :cond_2

    iget-object v7, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fields:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    new-instance v8, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p4}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;IZLcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    aput-object v8, v7, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result p4

    new-array p4, p4, [Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    iput-object p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    :goto_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result p4

    if-ge p3, p4, :cond_3

    iget-object p4, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    new-instance v7, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;IZLcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    aput-object v7, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;ILcom/amazon/whispersync/google/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-direct {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->crossLink()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fields:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->access$700(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->access$700(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 4

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->access$900(Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fields:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->access$1100(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->access$1100(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFieldByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFieldByNumber(I)Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->access$1300(Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method public findNestedTypeByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->containingType:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEnumTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fields:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestedTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public isExtensionNumber(I)Z
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method
