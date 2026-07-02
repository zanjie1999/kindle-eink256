.class public Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptorValidationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fccd5afd98283ccL


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final proto:Lcom/amazon/whispersync/google/protobuf/Message;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/amazon/whispersync/google/protobuf/Message;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->toProto()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/amazon/whispersync/google/protobuf/Message;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getProblemProto()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/amazon/whispersync/google/protobuf/Message;

    return-object v0
.end method

.method public getProblemSymbolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    return-object v0
.end method
