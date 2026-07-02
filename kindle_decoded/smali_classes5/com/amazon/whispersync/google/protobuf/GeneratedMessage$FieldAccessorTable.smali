.class public final Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldAccessorTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;,
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    }
.end annotation


# instance fields
.field private final descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private final fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;

    aget-object v4, p2, v0

    invoke-direct {v3, v1, v4, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;

    aget-object v4, p2, v0

    invoke-direct {v3, v1, v4, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;

    aget-object v4, p2, v0

    invoke-direct {v3, v1, v4, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;

    aget-object v4, p2, v0

    invoke-direct {v3, v1, v4, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;

    aget-object v4, p2, v0

    invoke-direct {v3, v1, v4, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;

    aget-object v4, p2, v0

    invoke-direct {v3, v1, v4, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p0

    return-object p0
.end method

.method private getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    .locals 2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This type does not have extensions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
