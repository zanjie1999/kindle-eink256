.class public Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;
.super Ljava/lang/Object;
.source "LazyJSONKeys.java"


# static fields
.field public static APP_VERSION:[B

.field public static CAN_TRIGGER:[B

.field public static DATE_MODIFIED:[B

.field public static FALSE_PREFIX:B

.field public static IS_LOCKED:[B

.field public static KEEP_IN_CACHE:[B

.field public static LEFT_BRACKET:B

.field public static LEFT_CURLY_BRACKET:B

.field public static MARKETPLACE_ID:[B

.field public static NINE:B

.field public static QUOTE:B

.field public static RIGHT_BRACKET:B

.field public static RIGHT_CURLY_BRACKET:B

.field public static SESSION_ID:[B

.field public static SUGGESTED_EXPIRATION:[B

.field public static TREATMENT:[B

.field public static TREATMENT_ASSIGNMENTS:[B

.field public static TRUE_PREFIX:B

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;

.field public static VERSION:[B

.field public static WEBLAB:[B

.field public static ZERO:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    .line 9
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"app_version\""

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->APP_VERSION:[B

    .line 13
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"session_id\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->SESSION_ID:[B

    .line 14
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"marketplace_id\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->MARKETPLACE_ID:[B

    .line 15
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"treatment_assignments\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->TREATMENT_ASSIGNMENTS:[B

    .line 16
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"weblab\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->WEBLAB:[B

    .line 17
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"can_trigger\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->CAN_TRIGGER:[B

    .line 18
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"date_modified\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->DATE_MODIFIED:[B

    .line 19
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"suggested_expiration\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->SUGGESTED_EXPIRATION:[B

    .line 20
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"keep_in_cache_date_in_millis\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->KEEP_IN_CACHE:[B

    .line 21
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"treatment\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->TREATMENT:[B

    .line 22
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"is_locked\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->IS_LOCKED:[B

    .line 23
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\"version\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->VERSION:[B

    .line 26
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->QUOTE:B

    .line 27
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v2, ":"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    .line 28
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v2, "["

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->LEFT_BRACKET:B

    .line 29
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v2, "]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->RIGHT_BRACKET:B

    .line 30
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string/jumbo v2, "{"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->LEFT_CURLY_BRACKET:B

    .line 31
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string/jumbo v2, "}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->RIGHT_CURLY_BRACKET:B

    .line 32
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->TRUE_PREFIX:B

    .line 33
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->FALSE_PREFIX:B

    .line 34
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->ZERO:B

    .line 35
    sget-object v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v2, "9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    aget-byte v0, v0, v1

    sput-byte v0, Lcom/amazon/weblab/mobile/repository/LazyJSONKeys;->NINE:B

    return-void
.end method
