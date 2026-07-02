.class final Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Printer"
.end annotation


# instance fields
.field final singleLineMode:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    return-void
.end method

.method synthetic constructor <init>(ZLcom/amazon/whispersync/google/protobuf/TextFormat$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;-><init>(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->print(Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printFieldValue(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private print(Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private printField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printSingleField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printSingleField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    :cond_1
    return-void
.end method

.method private printFieldValue(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p2, Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->print(Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_2

    :pswitch_1
    check-cast p2, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-static {p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->escapeBytes(Lcom/amazon/whispersync/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->access$700(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->access$600(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_7
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printSingleField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "]"

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v0, :cond_3

    const-string v0, " { "

    goto :goto_2

    :cond_3
    const-string v0, " {\n"

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->indent()V

    goto :goto_3

    :cond_4
    const-string v0, ": "

    :goto_2
    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printFieldValue(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p1

    sget-object p2, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p1, p2, :cond_6

    iget-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz p1, :cond_5

    const-string/jumbo p1, "} "

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string/jumbo p1, "}\n"

    goto :goto_4

    :cond_6
    iget-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz p1, :cond_7

    const-string p1, " "

    goto :goto_4

    :cond_7
    const-string p1, "\n"

    :goto_4
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private printUnknownField(IILjava/util/List;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    invoke-virtual {p4, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-static {p2, v0, p4}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->access$800(ILjava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v0, :cond_0

    const-string v0, " "

    goto :goto_1

    :cond_0
    const-string v0, "\n"

    :goto_1
    invoke-virtual {p4, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x5

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v2}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v3, :cond_1

    const-string v3, " { "

    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v3, " {\n"

    invoke-virtual {p2, v3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->indent()V

    :goto_1
    invoke-direct {p0, v2, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    iget-boolean v2, p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "} "

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string/jumbo v2, "}\n"

    :goto_2
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method
