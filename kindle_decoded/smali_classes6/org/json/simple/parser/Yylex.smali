.class Lorg/json/simple/parser/Yylex;
.super Ljava/lang/Object;
.source "Yylex.java"


# static fields
.field public static final STRING_BEGIN:I = 0x2

.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private sb:Ljava/lang/StringBuffer;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_LEXSTATE:[I

    const-string v0, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    .line 40
    invoke-static {v0}, Lorg/json/simple/parser/Yylex;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_CMAP:[C

    .line 45
    invoke-static {}, Lorg/json/simple/parser/Yylex;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ACTION:[I

    .line 77
    invoke-static {}, Lorg/json/simple/parser/Yylex;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ROWMAP:[I

    const/16 v0, 0x2a3

    new-array v0, v0, [I

    .line 108
    fill-array-data v0, :array_1

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_TRANS:[I

    const-string v0, "Unkown internal scanner error"

    const-string v1, "Error: could not match input"

    const-string v2, "Error: pushback value was too large"

    .line 185
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 194
    invoke-static {}, Lorg/json/simple/parser/Yylex;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ATTRIBUTE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
        0x5
        0x2
        0x6
        0x2
        0x2
        0x7
        0x8
        0x2
        0x9
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x11
        0x12
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        0x13
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x5
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x22
        0x23
        -0x1
        -0x1
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x25
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x29
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 292
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/json/simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    const/16 v0, 0x4000

    new-array v0, v0, [C

    .line 231
    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->zzAtBOL:Z

    .line 267
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    .line 282
    iput-object p1, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    return-void
.end method

.method private zzRefill()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 325
    iget-object v2, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v3, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    iget v2, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 331
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 332
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 333
    iput v1, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    .line 337
    :cond_0
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    iget-object v2, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    array-length v3, v2

    if-lt v0, v3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 339
    new-array v0, v0, [C

    .line 340
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    .line 345
    :cond_1
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v3, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_2

    .line 349
    iget v2, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    return v1

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 354
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    return v2

    .line 358
    :cond_3
    iget-object v2, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v3, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    int-to-char v0, v0

    aput-char v0, v2, v3

    return v1

    :cond_4
    return v2
.end method

.method private zzScanError(I)V
    .locals 1

    .line 468
    :try_start_0
    sget-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    sget-object p1, Lorg/json/simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 474
    :goto_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .locals 5

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    add-int/lit8 v4, p1, 0x1

    .line 68
    aput v2, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    move v1, v3

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v4

    goto :goto_1

    :cond_1
    return p1
.end method

.method private static zzUnpackAction()[I
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

    .line 57
    invoke-static {v2, v1, v0}, Lorg/json/simple/parser/Yylex;->zzUnpackAction(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .locals 5

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 214
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    add-int/lit8 v4, p1, 0x1

    .line 215
    aput v2, p2, p1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    move v1, v3

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v4

    goto :goto_1

    :cond_1
    return p1
.end method

.method private static zzUnpackAttribute()[I
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    .line 204
    invoke-static {v2, v1, v0}, Lorg/json/simple/parser/Yylex;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .locals 6

    const/high16 v0, 0x10000

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5a

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 306
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v4, v3, 0x1

    .line 307
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 308
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    move v1, v4

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .locals 5

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    aput v1, p2, p1

    move p1, v3

    move v1, v4

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static zzUnpackRowMap()[I
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

    .line 90
    invoke-static {v2, v1, v0}, Lorg/json/simple/parser/Yylex;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    return-object v0
.end method


# virtual methods
.method getPosition()I
    .locals 1

    .line 270
    iget v0, p0, Lorg/json/simple/parser/Yylex;->yychar:I

    return v0
.end method

.method public final yybegin(I)V
    .locals 0

    .line 415
    iput p1, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    return-void
.end method

.method public final yycharat(I)C
    .locals 2

    .line 439
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v1, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1
.end method

.method public final yyclose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    .line 373
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 375
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    return-void
.end method

.method public final yylength()I
    .locals 2

    .line 447
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    iget v1, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public yylex()Lorg/json/simple/parser/Yytoken;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 508
    iget v0, v1, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 509
    iget-object v2, v1, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    .line 510
    sget-object v3, Lorg/json/simple/parser/Yylex;->ZZ_CMAP:[C

    .line 512
    sget-object v4, Lorg/json/simple/parser/Yylex;->ZZ_TRANS:[I

    .line 513
    sget-object v5, Lorg/json/simple/parser/Yylex;->ZZ_ROWMAP:[I

    .line 514
    sget-object v6, Lorg/json/simple/parser/Yylex;->ZZ_ATTRIBUTE:[I

    .line 517
    :goto_0
    :pswitch_0
    iget v7, v1, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 519
    iget v8, v1, Lorg/json/simple/parser/Yylex;->yychar:I

    iget v9, v1, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int v9, v7, v9

    add-int/2addr v8, v9

    iput v8, v1, Lorg/json/simple/parser/Yylex;->yychar:I

    .line 523
    iput v7, v1, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iput v7, v1, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 525
    sget-object v8, Lorg/json/simple/parser/Yylex;->ZZ_LEXSTATE:[I

    iget v9, v1, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    aget v8, v8, v9

    iput v8, v1, Lorg/json/simple/parser/Yylex;->zzState:I

    const/4 v8, -0x1

    move v9, v7

    const/4 v10, -0x1

    :goto_1
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v7, v0, :cond_0

    add-int/lit8 v13, v7, 0x1

    .line 532
    aget-char v7, v2, v7

    goto :goto_3

    .line 533
    :cond_0
    iget-boolean v13, v1, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    if-eqz v13, :cond_1

    :goto_2
    const/4 v7, -0x1

    goto :goto_4

    .line 539
    :cond_1
    iput v7, v1, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 540
    iput v9, v1, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 541
    invoke-direct/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->zzRefill()Z

    move-result v0

    .line 543
    iget v2, v1, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 544
    iget v9, v1, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 545
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    .line 546
    iget v13, v1, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    if-eqz v0, :cond_2

    move-object v2, v7

    move v0, v13

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 552
    aget-char v2, v7, v2

    move/from16 v16, v13

    move v13, v0

    move/from16 v0, v16

    move-object/from16 v17, v7

    move v7, v2

    move-object/from16 v2, v17

    .line 555
    :goto_3
    iget v14, v1, Lorg/json/simple/parser/Yylex;->zzState:I

    aget v14, v5, v14

    aget-char v15, v3, v7

    add-int/2addr v14, v15

    aget v14, v4, v14

    if-ne v14, v8, :cond_3

    goto :goto_4

    .line 557
    :cond_3
    iput v14, v1, Lorg/json/simple/parser/Yylex;->zzState:I

    .line 559
    aget v15, v6, v14

    and-int/lit8 v8, v15, 0x1

    if-ne v8, v12, :cond_7

    and-int/lit8 v8, v15, 0x8

    if-ne v8, v11, :cond_6

    move v9, v13

    move v10, v14

    .line 570
    :goto_4
    iput v9, v1, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    if-gez v10, :cond_4

    goto :goto_5

    .line 572
    :cond_4
    sget-object v8, Lorg/json/simple/parser/Yylex;->ZZ_ACTION:[I

    aget v10, v8, v10

    :goto_5
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v13, 0x0

    packed-switch v10, :pswitch_data_0

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 676
    iget v7, v1, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iget v8, v1, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    if-ne v7, v8, :cond_5

    .line 677
    iput-boolean v12, v1, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    return-object v9

    .line 643
    :pswitch_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x10

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 644
    iget-object v9, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    int-to-char v7, v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 647
    new-instance v2, Lorg/json/simple/parser/ParseException;

    iget v3, v1, Lorg/json/simple/parser/Yylex;->yychar:I

    invoke-direct {v2, v3, v8, v0}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v2

    .line 590
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lorg/json/simple/parser/Yytoken;

    invoke-direct {v2, v13, v0}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v2

    .line 594
    :pswitch_3
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v13, v9}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 606
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    new-instance v2, Lorg/json/simple/parser/Yytoken;

    invoke-direct {v2, v13, v0}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v2

    .line 652
    :pswitch_5
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 618
    :pswitch_6
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 664
    :pswitch_7
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 638
    :pswitch_8
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 582
    :pswitch_9
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 622
    :pswitch_a
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 630
    :pswitch_b
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 598
    :pswitch_c
    invoke-virtual {v1, v13}, Lorg/json/simple/parser/Yylex;->yybegin(I)V

    new-instance v0, Lorg/json/simple/parser/Yytoken;

    iget-object v2, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v13, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 602
    :pswitch_d
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 574
    :pswitch_e
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 626
    :pswitch_f
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v9}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 668
    :pswitch_10
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v9}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 614
    :pswitch_11
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v9}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 656
    :pswitch_12
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v9}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 586
    :pswitch_13
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v8, v9}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 634
    :pswitch_14
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    invoke-direct {v0, v12, v9}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 578
    :pswitch_15
    iget-object v7, v1, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v7, v13, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Lorg/json/simple/parser/Yylex;->yybegin(I)V

    goto/16 :goto_0

    .line 660
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    new-instance v2, Lorg/json/simple/parser/Yytoken;

    invoke-direct {v2, v13, v0}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v2

    .line 610
    :pswitch_17
    new-instance v0, Lorg/json/simple/parser/ParseException;

    iget v2, v1, Lorg/json/simple/parser/Yylex;->yychar:I

    new-instance v3, Ljava/lang/Character;

    invoke-virtual {v1, v13}, Lorg/json/simple/parser/Yylex;->yycharat(I)C

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {v0, v2, v13, v3}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 681
    :cond_5
    invoke-direct {v1, v12}, Lorg/json/simple/parser/Yylex;->zzScanError(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v8, -0x1

    move v9, v13

    move v10, v14

    goto :goto_6

    :cond_7
    const/4 v8, -0x1

    :goto_6
    move v7, v13

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public yypushback(I)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lorg/json/simple/parser/Yylex;->yylength()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x2

    .line 488
    invoke-direct {p0, v0}, Lorg/json/simple/parser/Yylex;->zzScanError(I)V

    .line 490
    :cond_0
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    return-void
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    const/4 p1, 0x1

    .line 392
    iput-boolean p1, p0, Lorg/json/simple/parser/Yylex;->zzAtBOL:Z

    const/4 p1, 0x0

    .line 393
    iput-boolean p1, p0, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    .line 394
    iput p1, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iput p1, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 395
    iput p1, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    iput p1, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 396
    iput p1, p0, Lorg/json/simple/parser/Yylex;->yycolumn:I

    iput p1, p0, Lorg/json/simple/parser/Yylex;->yychar:I

    iput p1, p0, Lorg/json/simple/parser/Yylex;->yyline:I

    .line 397
    iput p1, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    return-void
.end method

.method public final yystate()I
    .locals 1

    .line 405
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .locals 4

    .line 423
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v2, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iget v3, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
