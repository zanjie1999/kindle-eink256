.class public final Lcom/google/protobuf/Descriptors$OneofDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptor"
.end annotation


# instance fields
.field private containingType:Lcom/google/protobuf/Descriptors$Descriptor;

.field private fieldCount:I

.field private fields:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2528
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2529
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/Descriptors;->access$1600(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fullName:Ljava/lang/String;

    .line 2530
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2531
    iput p4, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->index:I

    .line 2533
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 p1, 0x0

    .line 2534
    iput p1, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;ILcom/google/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2492
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/protobuf/Descriptors$OneofDescriptor;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 2492
    iget-object p0, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/Descriptors$OneofDescriptor;[Lcom/google/protobuf/Descriptors$FieldDescriptor;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 2492
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/protobuf/Descriptors$OneofDescriptor;I)I
    .locals 0

    .line 2492
    iput p1, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return p1
.end method

.method static synthetic access$1908(Lcom/google/protobuf/Descriptors$OneofDescriptor;)I
    .locals 2

    .line 2492
    iget v0, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/protobuf/Descriptors$OneofDescriptor;Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 2492
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$OneofDescriptor;->setProto(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 2520
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-void
.end method


# virtual methods
.method public getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2502
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .line 2504
    iget v0, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 2494
    iget v0, p0, Lcom/google/protobuf/Descriptors$OneofDescriptor;->index:I

    return v0
.end method
