.class final Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;,
        Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dependencies:[Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

.field private final descriptorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final enumValuesByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>([Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    array-length v0, p1

    new-array v0, v0, [Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->dependencies:[Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->dependencies:[Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    return-object p0
.end method

.method static validateSymbolName(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not a valid identifier."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v1

    :cond_5
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Missing name."

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0
.end method


# virtual methods
.method addEnumValueByNumber(Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;)V
    .locals 3

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;I)V

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method addFieldByNumber(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;I)V

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "has already been used in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" by field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0
.end method

.method addPackage(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    invoke-direct {v2, v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined (as something other than a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package) in file \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method addSymbol(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->validateSymbolName(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)V

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    const-string v5, "\"."

    const/4 v6, 0x0

    const/16 v7, 0x22

    if-ne v3, v4, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, v6}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v1

    :cond_0
    new-instance v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" is already defined in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, v6}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v2

    :cond_1
    new-instance v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined in file \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, v6}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v1

    :cond_2
    return-void
.end method

.method findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;
    .locals 4

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->dependencies:[Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method lookupSymbol(Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    goto :goto_3

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object v3, p1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v7

    if-eqz v7, :cond_5

    if-eq v1, v2, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not defined."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$1;)V

    throw v0

    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2
.end method
