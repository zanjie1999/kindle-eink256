.class public final Lcom/google/crypto/tink/proto/AesCmacParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCmacParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCmacParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCmacParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCmacParams;",
        "Lcom/google/crypto/tink/proto/AesCmacParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCmacParamsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacParams;

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_SIZE_FIELD_NUMBER:I = 0x1


# instance fields
.field private tagSize_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 220
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCmacParams;-><init>()V

    .line 223
    sput-object v0, Lcom/google/crypto/tink/proto/AesCmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 224
    const-class v1, Lcom/google/crypto/tink/proto/AesCmacParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCmacParams;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacParams;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacParams;
    .locals 1

    .line 229
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacParams;

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

    .line 172
    sget-object p2, Lcom/google/crypto/tink/proto/AesCmacParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 207
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 192
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 194
    const-class p2, Lcom/google/crypto/tink/proto/AesCmacParams;

    monitor-enter p2

    .line 195
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 197
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/AesCmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacParams;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 200
    sput-object p1, Lcom/google/crypto/tink/proto/AesCmacParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 202
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

    .line 189
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacParams;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "tagSize_"

    aput-object p3, p1, p2

    .line 185
    sget-object p2, Lcom/google/crypto/tink/proto/AesCmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacParams;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 177
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCmacParams$1;)V

    return-object p1

    .line 174
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/AesCmacParams;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/AesCmacParams;-><init>()V

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

.method public getTagSize()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacParams;->tagSize_:I

    return v0
.end method
