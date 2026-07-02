.class public final Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/amazon/whispersync/google/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final containingTypeDefaultInstance:Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field private final descriptor:Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

.field private final messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/MessageLite;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/amazon/whispersync/google/protobuf/MessageLite;",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/amazon/whispersync/google/protobuf/MessageLite;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/MessageLite;

    iput-object p4, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/amazon/whispersync/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/MessageLite;Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/MessageLite;

    return-object p0
.end method


# virtual methods
.method public getContainingTypeDefaultInstance()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContainingType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/amazon/whispersync/google/protobuf/MessageLite;

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/amazon/whispersync/google/protobuf/MessageLite;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    return v0
.end method
