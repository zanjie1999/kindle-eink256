.class public final Lcom/google/crypto/tink/proto/KeyTypeEntry;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "KeyTypeEntry.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeyTypeEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/KeyTypeEntry;",
        "Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeyTypeEntryOrBuilder;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CATALOGUE_NAME_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTypeEntry;

.field public static final KEY_MANAGER_VERSION_FIELD_NUMBER:I = 0x3

.field public static final NEW_KEY_ALLOWED_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/KeyTypeEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMITIVE_NAME_FIELD_NUMBER:I = 0x1

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private catalogueName_:Ljava/lang/String;

.field private keyManagerVersion_:I

.field private newKeyAllowed_:Z

.field private primitiveName_:Ljava/lang/String;

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 750
    new-instance v0, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/KeyTypeEntry;-><init>()V

    .line 753
    sput-object v0, Lcom/google/crypto/tink/proto/KeyTypeEntry;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTypeEntry;

    .line 754
    const-class v1, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeyTypeEntry;->primitiveName_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeyTypeEntry;->typeUrl_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/crypto/tink/proto/KeyTypeEntry;->catalogueName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/KeyTypeEntry;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/crypto/tink/proto/KeyTypeEntry;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTypeEntry;

    return-object v0
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

    .line 697
    sget-object p2, Lcom/google/crypto/tink/proto/KeyTypeEntry$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 743
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 737
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 722
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/KeyTypeEntry;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 724
    const-class p2, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    monitor-enter p2

    .line 725
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/KeyTypeEntry;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 727
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/KeyTypeEntry;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTypeEntry;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 730
    sput-object p1, Lcom/google/crypto/tink/proto/KeyTypeEntry;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 732
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

    .line 719
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/KeyTypeEntry;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTypeEntry;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "primitiveName_"

    aput-object v0, p1, p3

    const-string p3, "typeUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "keyManagerVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "newKeyAllowed_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "catalogueName_"

    aput-object p3, p1, p2

    .line 715
    sget-object p2, Lcom/google/crypto/tink/proto/KeyTypeEntry;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/KeyTypeEntry;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 702
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/KeyTypeEntry$Builder;-><init>(Lcom/google/crypto/tink/proto/KeyTypeEntry$1;)V

    return-object p1

    .line 699
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/KeyTypeEntry;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/KeyTypeEntry;-><init>()V

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
