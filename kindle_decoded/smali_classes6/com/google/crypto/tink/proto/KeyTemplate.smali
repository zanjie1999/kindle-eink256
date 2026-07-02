.class public final Lcom/google/crypto/tink/proto/KeyTemplate;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "KeyTemplate.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeyTemplateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/KeyTemplate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/KeyTemplate;",
        "Lcom/google/crypto/tink/proto/KeyTemplate$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeyTemplateOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/KeyTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private outputPrefixType_:I

.field private typeUrl_:Ljava/lang/String;

.field private value_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 530
    new-instance v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;-><init>()V

    .line 533
    sput-object v0, Lcom/google/crypto/tink/proto/KeyTemplate;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 534
    const-class v1, Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->typeUrl_:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->value_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/KeyTemplate;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/KeyTemplate;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->setTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/KeyTemplate;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/KeyTemplate;Lcom/google/crypto/tink/proto/OutputPrefixType;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 1

    .line 539
    sget-object v0, Lcom/google/crypto/tink/proto/KeyTemplate;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;
    .locals 1

    .line 269
    sget-object v0, Lcom/google/crypto/tink/proto/KeyTemplate;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    return-object v0
.end method

.method private setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->outputPrefixType_:I

    return-void
.end method

.method private setTypeUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iput-object p1, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->typeUrl_:Ljava/lang/String;

    return-void
.end method

.method private setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iput-object p1, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->value_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 479
    sget-object p2, Lcom/google/crypto/tink/proto/KeyTemplate$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 523
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 517
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 502
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/KeyTemplate;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 504
    const-class p2, Lcom/google/crypto/tink/proto/KeyTemplate;

    monitor-enter p2

    .line 505
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/KeyTemplate;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 507
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/KeyTemplate;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 510
    sput-object p1, Lcom/google/crypto/tink/proto/KeyTemplate;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 512
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 499
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/KeyTemplate;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "typeUrl_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "outputPrefixType_"

    aput-object p3, p1, p2

    .line 495
    sget-object p2, Lcom/google/crypto/tink/proto/KeyTemplate;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTemplate;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 484
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;-><init>(Lcom/google/crypto/tink/proto/KeyTemplate$1;)V

    return-object p1

    .line 481
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/KeyTemplate;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 1

    .line 153
    iget v0, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->outputPrefixType_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->forNumber(I)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/OutputPrefixType;

    :cond_0
    return-object v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->typeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeyTemplate;->value_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method
