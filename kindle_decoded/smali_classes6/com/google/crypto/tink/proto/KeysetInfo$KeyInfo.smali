.class public final Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "KeysetInfo.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KeysetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

.field public static final KEY_ID_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyId_:I

.field private outputPrefixType_:I

.field private status_:I

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 742
    new-instance v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;-><init>()V

    .line 745
    sput-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 746
    const-class v1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 106
    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Lcom/google/crypto/tink/proto/OutputPrefixType;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;Lcom/google/crypto/tink/proto/KeyStatusType;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->setKeyId(I)V

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .locals 1

    .line 417
    sget-object v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;

    return-object v0
.end method

.method private setKeyId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 266
    iput p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->keyId_:I

    return-void
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

    .line 327
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->outputPrefixType_:I

    return-void
.end method

.method private setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyStatusType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->status_:I

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

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    iput-object p1, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->typeUrl_:Ljava/lang/String;

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

    .line 690
    sget-object p2, Lcom/google/crypto/tink/proto/KeysetInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 735
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 729
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 714
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 716
    const-class p2, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    monitor-enter p2

    .line 717
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 719
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 722
    sput-object p1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 724
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

    .line 711
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "typeUrl_"

    aput-object v0, p1, p3

    const-string p3, "status_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "keyId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "outputPrefixType_"

    aput-object p3, p1, p2

    .line 707
    sget-object p2, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 695
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;-><init>(Lcom/google/crypto/tink/proto/KeysetInfo$1;)V

    return-object p1

    .line 692
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;-><init>()V

    return-object p1

    nop

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

.method public getKeyId()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->keyId_:I

    return v0
.end method
