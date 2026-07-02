.class public abstract Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
.super Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;",
        ">",
        "Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private builderParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

.field private isClean:Z

.field private meAsParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder<",
            "TBuilderType;>.BuilderParentImpl;"
        }
    .end annotation
.end field

.field private unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;-><init>()V

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getAllFieldsMutable()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->addRepeated(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->clear(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clearField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->get(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected getParentForChildren()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->meAsParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->meAsParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->meAsParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    return-object v0
.end method

.method public getRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeated(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeatedCount(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)I

    move-result p1

    return p1
.end method

.method public final getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->has(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)Z

    move-result p1

    return p1
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
.end method

.method protected isClean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 5

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v2}, Lcom/amazon/whispersync/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->hasField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v1}, Lcom/amazon/whispersync/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected markClean()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean:Z

    return-void
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->newBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected onBuilt()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->markClean()V

    :cond_0
    return-void
.end method

.method protected final onChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->isClean:Z

    :cond_0
    return-void
.end method

.method protected parseUnknownField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p4, p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/amazon/whispersync/google/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method public setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->set(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->setRepeated(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method
