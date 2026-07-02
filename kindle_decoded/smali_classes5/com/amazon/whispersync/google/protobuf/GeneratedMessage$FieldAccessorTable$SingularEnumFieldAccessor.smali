.class final Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingularEnumFieldAccessor"
.end annotation


# instance fields
.field private getValueDescriptorMethod:Ljava/lang/reflect/Method;

.field private valueOfMethod:Ljava/lang/reflect/Method;


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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;->type:Ljava/lang/Class;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const-class p3, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string/jumbo p3, "valueOf"

    invoke-static {p1, p3, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    iget-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;->type:Ljava/lang/Class;

    new-array p2, p4, [Ljava/lang/Class;

    const-string p3, "getValueDescriptor"

    invoke-static {p1, p3, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    invoke-static {v0, p2, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    return-void
.end method
