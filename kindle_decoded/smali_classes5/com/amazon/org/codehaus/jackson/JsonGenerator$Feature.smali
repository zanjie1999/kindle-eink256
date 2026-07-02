.class public final enum Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;
.super Ljava/lang/Enum;
.source "JsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/JsonGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_JSON_CONTENT:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_TARGET:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum ESCAPE_NON_ASCII:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum FLUSH_PASSED_TO_STREAM:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum QUOTE_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum QUOTE_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;


# instance fields
.field final _defaultState:Z

.field final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 51
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    .line 63
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const-string v3, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    .line 72
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v3, 0x2

    const-string v4, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    .line 86
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v4, 0x3

    const-string v5, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v5, v4, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    .line 105
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v5, 0x4

    const-string v6, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    .line 120
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v6, 0x5

    const-string v7, "FLUSH_PASSED_TO_STREAM"

    invoke-direct {v0, v7, v6, v2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    .line 131
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v7, 0x6

    const-string v8, "ESCAPE_NON_ASCII"

    invoke-direct {v0, v8, v7, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    .line 37
    sget-object v9, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->$VALUES:[Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput-boolean p3, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    .line 156
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->_mask:I

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 146
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->values()[Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 147
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->$VALUES:[Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;->_mask:I

    return v0
.end method
