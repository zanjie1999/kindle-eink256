.class public final enum Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum START_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;


# instance fields
.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NOT_AVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 34
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v3, 0x1

    const-string v4, "START_OBJECT"

    const-string/jumbo v5, "{"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 40
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v4, 0x2

    const-string v5, "END_OBJECT"

    const-string/jumbo v6, "}"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 46
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v5, 0x3

    const-string v6, "START_ARRAY"

    const-string v7, "["

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 52
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v6, 0x4

    const-string v7, "END_ARRAY"

    const-string v8, "]"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 58
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v7, 0x5

    const-string v8, "FIELD_NAME"

    invoke-direct {v0, v8, v7, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 72
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v8, 0x6

    const-string v9, "VALUE_EMBEDDED_OBJECT"

    invoke-direct {v0, v9, v8, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 79
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v9, 0x7

    const-string v10, "VALUE_STRING"

    invoke-direct {v0, v10, v9, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 87
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/16 v10, 0x8

    const-string v11, "VALUE_NUMBER_INT"

    invoke-direct {v0, v11, v10, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 95
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/16 v11, 0x9

    const-string v12, "VALUE_NUMBER_FLOAT"

    invoke-direct {v0, v12, v11, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 101
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/16 v2, 0xa

    const-string v12, "VALUE_TRUE"

    const-string/jumbo v13, "true"

    invoke-direct {v0, v12, v2, v13}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 107
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/16 v12, 0xb

    const-string v13, "VALUE_FALSE"

    const-string v14, "false"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 113
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/16 v13, 0xc

    const-string v14, "VALUE_NULL"

    const-string v15, "null"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    .line 7
    sget-object v15, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    .line 131
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    goto :goto_1

    .line 133
    :cond_0
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;

    .line 134
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    .line 136
    array-length p1, p1

    .line 137
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 139
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    aget-char v0, v0, p2

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    return-object v0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    return-object v0
.end method

.method public asCharArray()[C
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public isNumeric()Z
    .locals 1

    .line 149
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isScalarValue()Z
    .locals 2

    .line 159
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
