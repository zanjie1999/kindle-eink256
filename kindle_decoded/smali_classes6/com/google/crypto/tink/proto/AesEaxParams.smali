.class public final Lcom/google/crypto/tink/proto/AesEaxParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesEaxParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesEaxParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesEaxParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesEaxParams;",
        "Lcom/google/crypto/tink/proto/AesEaxParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesEaxParamsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesEaxParams;

.field public static final IV_SIZE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesEaxParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ivSize_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 252
    new-instance v0, Lcom/google/crypto/tink/proto/AesEaxParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesEaxParams;-><init>()V

    .line 255
    sput-object v0, Lcom/google/crypto/tink/proto/AesEaxParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesEaxParams;

    .line 256
    const-class v1, Lcom/google/crypto/tink/proto/AesEaxParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesEaxParams;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/AesEaxParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesEaxParams;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesEaxParams;
    .locals 1

    .line 261
    sget-object v0, Lcom/google/crypto/tink/proto/AesEaxParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesEaxParams;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 204
    sget-object p2, Lcom/google/crypto/tink/proto/AesEaxParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 245
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 239
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 224
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/AesEaxParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 226
    const-class p2, Lcom/google/crypto/tink/proto/AesEaxParams;

    monitor-enter p2

    .line 227
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/AesEaxParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 229
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/AesEaxParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesEaxParams;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 232
    sput-object p1, Lcom/google/crypto/tink/proto/AesEaxParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 234
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

    .line 221
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/AesEaxParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesEaxParams;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "ivSize_"

    aput-object p3, p1, p2

    .line 217
    sget-object p2, Lcom/google/crypto/tink/proto/AesEaxParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesEaxParams;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 209
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/AesEaxParams$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/AesEaxParams$Builder;-><init>(Lcom/google/crypto/tink/proto/AesEaxParams$1;)V

    return-object p1

    .line 206
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/AesEaxParams;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/AesEaxParams;-><init>()V

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

.method public getIvSize()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/crypto/tink/proto/AesEaxParams;->ivSize_:I

    return v0
.end method
