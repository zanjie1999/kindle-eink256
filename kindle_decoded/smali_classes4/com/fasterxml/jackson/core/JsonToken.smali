.class public final enum Lcom/fasterxml/jackson/core/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field final _id:I

.field final _isBoolean:Z

.field final _isNumber:Z

.field final _isScalar:Z

.field final _isStructEnd:Z

.field final _isStructStart:Z

.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NOT_AVAILABLE"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x1

    const-string v4, "START_OBJECT"

    const-string v5, "{"

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 43
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v4, 0x2

    const-string v5, "END_OBJECT"

    const-string v6, "}"

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v5, 0x3

    const-string v6, "START_ARRAY"

    const-string v7, "["

    invoke-direct {v0, v6, v5, v7, v5}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v6, 0x4

    const-string v7, "END_ARRAY"

    const-string v8, "]"

    invoke-direct {v0, v7, v6, v8, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v7, 0x5

    const-string v8, "FIELD_NAME"

    invoke-direct {v0, v8, v7, v2, v7}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 73
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v8, 0xc

    const/4 v9, 0x6

    const-string v10, "VALUE_EMBEDDED_OBJECT"

    invoke-direct {v0, v10, v9, v2, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 80
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v10, 0x7

    const-string v11, "VALUE_STRING"

    invoke-direct {v0, v11, v10, v2, v9}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 88
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v11, 0x8

    const-string v12, "VALUE_NUMBER_INT"

    invoke-direct {v0, v12, v11, v2, v10}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 96
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v12, 0x9

    const-string v13, "VALUE_NUMBER_FLOAT"

    invoke-direct {v0, v13, v12, v2, v11}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v2, 0xa

    const-string v13, "VALUE_TRUE"

    const-string v14, "true"

    invoke-direct {v0, v13, v2, v14, v12}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 108
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v13, 0xb

    const-string v14, "VALUE_FALSE"

    const-string v15, "false"

    invoke-direct {v0, v14, v13, v15, v2}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 114
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v14, "VALUE_NULL"

    const-string v15, "null"

    invoke-direct {v0, v14, v8, v15, v13}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v15, v14, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v9

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v10

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v11

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v12

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v14, v13

    aput-object v0, v14, v8

    sput-object v14, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 140
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 142
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    goto :goto_1

    .line 144
    :cond_0
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 145
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 147
    array-length p2, p2

    .line 148
    new-array p3, p2, [B

    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 150
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    aget-char v1, v1, p3

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 153
    :cond_1
    :goto_1
    iput p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    const/16 p2, 0xa

    const/4 p3, 0x1

    if-eq p4, p2, :cond_3

    const/16 p2, 0x9

    if-ne p4, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 155
    :goto_3
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    const/4 p2, 0x7

    if-eq p4, p2, :cond_5

    const/16 p2, 0x8

    if-ne p4, p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p2, 0x1

    .line 156
    :goto_5
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    if-eq p4, p3, :cond_7

    const/4 p2, 0x3

    if-ne p4, p2, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 p2, 0x1

    .line 158
    :goto_7
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    const/4 p2, 0x2

    if-eq p4, p2, :cond_9

    const/4 p2, 0x4

    if-ne p4, p2, :cond_8

    goto :goto_8

    :cond_8
    const/4 p2, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 p2, 0x1

    .line 159
    :goto_9
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    .line 161
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    if-nez v0, :cond_a

    if-nez p2, :cond_a

    const/4 p2, 0x5

    if-eq p4, p2, :cond_a

    const/4 p2, -0x1

    if-eq p4, p2, :cond_a

    const/4 p1, 0x1

    :cond_a
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 12
    const-class v0, Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 12
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method


# virtual methods
.method public final asCharArray()[C
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public final id()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    return v0
.end method

.method public final isNumeric()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    return v0
.end method

.method public final isScalarValue()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    return v0
.end method

.method public final isStructEnd()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    return v0
.end method

.method public final isStructStart()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    return v0
.end method
