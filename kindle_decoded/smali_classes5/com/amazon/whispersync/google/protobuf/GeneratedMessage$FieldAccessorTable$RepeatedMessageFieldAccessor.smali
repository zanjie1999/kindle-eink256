.class final Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedMessageFieldAccessor"
.end annotation


# instance fields
.field private final newBuilderMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;",
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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->type:Ljava/lang/Class;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Class;

    const-string p3, "newBuilder"

    invoke-static {p1, p3, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private coerceType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->build()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addRepeated(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    return-void
.end method

.method public newBuilder()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    return-object v0
.end method

.method public setRepeated(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V

    return-void
.end method
