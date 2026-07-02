.class public final Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCmacKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCmacKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCmacKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCmacKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

.field public static final KEY_SIZE_FIELD_NUMBER:I = 0x1

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacKeyFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keySize_:I

.field private params_:Lcom/google/crypto/tink/proto/AesCmacParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 315
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;-><init>()V

    .line 318
    sput-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    .line 319
    const-class v1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat;
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

    .line 111
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object p0
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

    .line 265
    sget-object p2, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 308
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 302
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 287
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 289
    const-class p2, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    monitor-enter p2

    .line 290
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 292
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 295
    sput-object p1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 297
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

    .line 284
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "keySize_"

    aput-object v0, p1, p3

    const-string p3, "params_"

    aput-object p3, p1, p2

    .line 280
    sget-object p2, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 270
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCmacKeyFormat$1;)V

    return-object p1

    .line 267
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;-><init>()V

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

.method public getKeySize()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->keySize_:I

    return v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/AesCmacParams;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method
