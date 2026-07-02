.class public final Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    }
.end annotation


# instance fields
.field private final dependencies:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

.field private final enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

.field private final messageTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private final pool:Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

.field private proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

.field private final services:[Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p2}, [Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result p2

    new-array p2, p2, [Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v6, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance v7, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;ILcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result p3

    new-array p3, p3, [Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    iget-object v6, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    new-instance v7, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;ILcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result p3

    new-array p3, p3, [Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p3, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;ILcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result p3

    new-array p3, p3, [Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    :goto_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    new-instance v7, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;IZLcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    aput-object v7, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    return-object p0
.end method

.method public static buildFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;)V

    array-length v0, p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Dependencies passed to FileDescriptor.buildFrom() don\'t match those listed in the FileDescriptorProto."

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-direct {p0, v1, v4, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw p0

    :cond_1
    invoke-direct {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->crossLink()V

    return-object v1

    :cond_2
    new-instance p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    invoke-direct {p0, v1, v4, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw p0
.end method

.method private crossLink()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->access$500(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;->access$600(Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

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

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .locals 5

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1
    :try_end_1
    .catch Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v1, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1
    :try_end_2
    .catch Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;->assignDescriptors(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    move-result-object p2

    if-eqz p2, :cond_1

    :try_start_3
    invoke-static {p0, p2}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([BLcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0
    :try_end_3
    .catch Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid embedded descriptor for \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Standard encoding ISO-8859-1 not supported by JVM."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private setProto(Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;)V
    .locals 4

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->access$800(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->access$900(Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;->access$1000(Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->access$1100(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public findMessageTypeByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public findServiceByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

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

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method
