.class public final Lcom/google/crypto/tink/proto/AesGcmKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesGcmKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesGcmKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesGcmKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesGcmKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

.field public static final KEY_SIZE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesGcmKeyFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x3


# instance fields
.field private keySize_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 286
    new-instance v0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;-><init>()V

    .line 289
    sput-object v0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    .line 290
    const-class v1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesGcmKeyFormat;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesGcmKeyFormat;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->setKeySize(I)V

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;
    .locals 1

    .line 148
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmKeyFormat;
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

    .line 96
    sget-object v0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    return-object p0
.end method

.method private setKeySize(I)V
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
    iput p1, p0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->keySize_:I

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

    .line 236
    sget-object p2, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 279
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 273
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 258
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 260
    const-class p2, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    monitor-enter p2

    .line 261
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 263
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 266
    sput-object p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 268
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

    .line 255
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "keySize_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    .line 251
    sget-object p2, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    const-string p3, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 241
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/AesGcmKeyFormat$1;)V

    return-object p1

    .line 238
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;-><init>()V

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

    .line 29
    iget v0, p0, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->keySize_:I

    return v0
.end method
