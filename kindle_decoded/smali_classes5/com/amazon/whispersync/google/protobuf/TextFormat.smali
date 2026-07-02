.class public final Lcom/amazon/whispersync/google/protobuf/TextFormat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;,
        Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;,
        Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;,
        Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

.field private static final SINGLE_LINE_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;-><init>(ZLcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;-><init>(ZLcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(ILjava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private static digitValue(B)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    :goto_0
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x41

    goto :goto_0
.end method

.method static escapeBytes(Lcom/amazon/whispersync/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    :goto_1
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_0
    const-string v2, "\\r"

    goto :goto_2

    :pswitch_1
    const-string v2, "\\f"

    goto :goto_2

    :pswitch_2
    const-string v2, "\\v"

    goto :goto_2

    :pswitch_3
    const-string v2, "\\n"

    goto :goto_2

    :pswitch_4
    const-string v2, "\\t"

    goto :goto_2

    :pswitch_5
    const-string v2, "\\b"

    goto :goto_2

    :pswitch_6
    const-string v2, "\\a"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v2, "\\\\"

    goto :goto_2

    :cond_2
    const-string v2, "\\\'"

    goto :goto_2

    :cond_3
    const-string v2, "\\\""

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->escapeBytes(Lcom/amazon/whispersync/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isHex(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOctal(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->mergeField(Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->merge(Ljava/lang/Readable;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V

    return-void
.end method

.method private static mergeField(Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2e

    const-string v3, "\"."

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v5, "."

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;->findExtensionByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v5

    const-string v6, "Extension \""

    if-eqz v5, :cond_2

    iget-object v7, v5, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v7}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v7

    if-ne v7, v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" does not extend message type \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" not found in the ExtensionRegistry."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v6

    sget-object v7, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v6, v7, :cond_4

    move-object v5, v4

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v6

    sget-object v7, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object v5, v4

    :cond_5
    if-eqz v5, :cond_f

    move-object v0, v5

    move-object v5, v4

    :goto_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v6, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v7, ":"

    if-ne v1, v6, :cond_a

    invoke-virtual {p0, v7}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    const-string v1, "<"

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ">"

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "{"

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    const-string/jumbo v1, "}"

    :goto_2
    if-nez v5, :cond_7

    invoke-interface {p2, v0}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->newBuilderForField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v2, v5, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v2}, Lcom/amazon/whispersync/google/protobuf/Message;->newBuilderForType()Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {p0, p1, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->mergeField(Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;Lcom/amazon/whispersync/google/protobuf/Message$Builder;)V

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-interface {v2}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->build()Lcom/amazon/whispersync/google/protobuf/Message;

    move-result-object v4

    goto/16 :goto_6

    :cond_a
    invoke-virtual {p0, v7}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    sget-object p1, Lcom/amazon/whispersync/google/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can\'t get here."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->lookingAtInteger()Z

    move-result v1

    const-string v4, "Enum type \""

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object v4, v3

    goto/16 :goto_6

    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has no value with number "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_c
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object v4, v2

    goto :goto_6

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has no value named \""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v4

    goto :goto_6

    :pswitch_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :pswitch_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeUInt64()J

    move-result-wide p0

    goto :goto_4

    :pswitch_5
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeUInt32()I

    move-result p0

    goto :goto_5

    :pswitch_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_6

    :pswitch_8
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_6

    :pswitch_9
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeInt64()J

    move-result-wide p0

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_6

    :pswitch_a
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result p0

    :goto_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_6
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p2, v0, v4}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->addRepeatedField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    goto :goto_7

    :cond_e
    invoke-interface {p2, v0, v4}, Lcom/amazon/whispersync/google/protobuf/Message$Builder;->setField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;

    :goto_7
    return-void

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Message type \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" has no field named \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

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

.method static parseInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static parseInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "-"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number must be positive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v1, 0xa

    const-string v3, "0x"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    goto :goto_1

    :cond_2
    const-string v3, "0"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, 0x8

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v3, v4, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_4

    neg-long v0, v0

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long v2, v0, p1

    if-ltz v2, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long v2, v0, p1

    if-gez v2, :cond_7

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    goto/16 :goto_3

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_10
    :goto_3
    return-wide v0

    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static print(Lcom/amazon/whispersync/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->access$200(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static print(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->access$300(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->access$400(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printFieldToString(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->printField(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static printFieldValue(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, p1, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->access$500(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printToString(Lcom/amazon/whispersync/google/protobuf/Message;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->print(Lcom/amazon/whispersync/google/protobuf/Message;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static printToString(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->print(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p0, Lcom/amazon/whispersync/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->access$300(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_1

    :cond_2
    const-string p0, "\""

    invoke-virtual {p2, p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->escapeBytes(Lcom/amazon/whispersync/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static printUnknownFieldValue(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static shortDebugString(Lcom/amazon/whispersync/google/protobuf/Message;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    invoke-static {v1, p0, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->access$200(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static shortDebugString(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/amazon/whispersync/google/protobuf/TextFormat$1;)V

    invoke-static {v1, p0, v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;->access$300(Lcom/amazon/whispersync/google/protobuf/TextFormat$Printer;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;Lcom/amazon/whispersync/google/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static unescapeBytes(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v2, v4, :cond_12

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_11

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->digitValue(B)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    invoke-static {v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->digitValue(B)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_0
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    invoke-static {v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->digitValue(B)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x22

    if-eq v4, v6, :cond_f

    const/16 v6, 0x27

    if-eq v4, v6, :cond_e

    if-eq v4, v5, :cond_d

    const/16 v5, 0x66

    if-eq v4, v5, :cond_c

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_b

    const/16 v5, 0x72

    if-eq v4, v5, :cond_a

    const/16 v5, 0x74

    if-eq v4, v5, :cond_9

    const/16 v5, 0x76

    if-eq v4, v5, :cond_8

    const/16 v5, 0x78

    if-eq v4, v5, :cond_5

    const/16 v5, 0x61

    if-eq v4, v5, :cond_4

    const/16 v5, 0x62

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    aput-byte v5, v0, v3

    goto/16 :goto_1

    :cond_3
    new-instance p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    aput-byte v5, v0, v3

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->isHex(B)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    invoke-static {v4}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->digitValue(B)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->isHex(B)Z

    move-result v6

    if-eqz v6, :cond_6

    mul-int/lit8 v4, v4, 0x10

    invoke-virtual {p0, v5}, Lcom/amazon/whispersync/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    invoke-static {v2}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->digitValue(B)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    move v4, v5

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    aput-byte v5, v0, v3

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    aput-byte v5, v0, v3

    goto :goto_1

    :cond_a
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    aput-byte v5, v0, v3

    goto :goto_1

    :cond_b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    aput-byte v5, v0, v3

    goto :goto_1

    :cond_c
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    aput-byte v5, v0, v3

    goto :goto_1

    :cond_d
    add-int/lit8 v4, v3, 0x1

    aput-byte v5, v0, v3

    goto :goto_1

    :cond_e
    add-int/lit8 v4, v3, 0x1

    aput-byte v6, v0, v3

    goto :goto_1

    :cond_f
    add-int/lit8 v4, v3, 0x1

    aput-byte v6, v0, v3

    :goto_1
    move v3, v4

    goto :goto_3

    :cond_10
    new-instance p0, Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    add-int/lit8 v5, v3, 0x1

    aput-byte v4, v0, v3

    :goto_2
    move v3, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-static {v0, v1, v3}, Lcom/amazon/whispersync/google/protobuf/ByteString;->copyFrom([BII)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/amazon/whispersync/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static unsignedToString(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static unsignedToString(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
