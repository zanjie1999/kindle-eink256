.class public final Lcom/google/crypto/tink/proto/AesCtrKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCtrKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCtrKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCtrKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCtrKey;",
        "Lcom/google/crypto/tink/proto/AesCtrKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCtrKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x3

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCtrKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private params_:Lcom/google/crypto/tink/proto/AesCtrParams;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 380
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCtrKey;-><init>()V

    .line 383
    sput-object v0, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 384
    const-class v1, Lcom/google/crypto/tink/proto/AesCtrKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCtrKey;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesCtrKey;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/AesCtrKey;Lcom/google/crypto/tink/proto/AesCtrParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrKey;->setParams(Lcom/google/crypto/tink/proto/AesCtrParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/AesCtrKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrKey;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCtrKey;
    .locals 1

    .line 389
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesCtrKey$Builder;
    .locals 1

    .line 195
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrKey;

    return-object p0
.end method

.method private setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setParams(Lcom/google/crypto/tink/proto/AesCtrParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCtrKey;->params_:Lcom/google/crypto/tink/proto/AesCtrParams;

    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 37
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCtrKey;->version_:I

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

    .line 329
    sget-object p2, Lcom/google/crypto/tink/proto/AesCtrKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 373
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 367
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 352
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/AesCtrKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 354
    const-class p2, Lcom/google/crypto/tink/proto/AesCtrKey;

    monitor-enter p2

    .line 355
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/AesCtrKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 357
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 360
    sput-object p1, Lcom/google/crypto/tink/proto/AesCtrKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 362
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

    .line 349
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "version_"

    aput-object v0, p1, p3

    const-string p3, "params_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "keyValue_"

    aput-object p3, p1, p2

    .line 345
    sget-object p2, Lcom/google/crypto/tink/proto/AesCtrKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrKey;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 334
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCtrKey$1;)V

    return-object p1

    .line 331
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/AesCtrKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/AesCtrKey;-><init>()V

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

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/AesCtrParams;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCtrKey;->params_:Lcom/google/crypto/tink/proto/AesCtrParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCtrParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCtrKey;->version_:I

    return v0
.end method
