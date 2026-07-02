.class final Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final enumTypeMap:Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field private final isPacked:Z

.field private final isRepeated:Z

.field private final number:I

.field private final type:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;ILcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;

    iput p2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    iput-boolean p4, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    iput-boolean p5, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;ILcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;ZZLcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;ILcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget p1, p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/amazon/whispersync/google/protobuf/WireFormat$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/amazon/whispersync/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/MessageLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
