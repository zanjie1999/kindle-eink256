.class public final enum Lcom/fasterxml/jackson/databind/SerializationFeature;
.super Ljava/lang/Enum;
.source "SerializationFeature.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v1, 0x0

    const-string v2, "WRAP_ROOT_VALUE"

    invoke-direct {v0, v2, v1, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v2, 0x1

    const-string v3, "INDENT_OUTPUT"

    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 72
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v3, 0x2

    const-string v4, "FAIL_ON_EMPTY_BEANS"

    invoke-direct {v0, v4, v3, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 84
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v4, 0x3

    const-string v5, "FAIL_ON_SELF_REFERENCES"

    invoke-direct {v0, v5, v4, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v5, 0x4

    const-string v6, "WRAP_EXCEPTIONS"

    invoke-direct {v0, v6, v5, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 116
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v6, 0x5

    const-string v7, "FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS"

    invoke-direct {v0, v7, v6, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 140
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v7, 0x6

    const-string v8, "CLOSE_CLOSEABLE"

    invoke-direct {v0, v8, v7, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 154
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v8, 0x7

    const-string v9, "FLUSH_AFTER_WRITE_VALUE"

    invoke-direct {v0, v9, v8, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 184
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v9, 0x8

    const-string v10, "WRITE_DATES_AS_TIMESTAMPS"

    invoke-direct {v0, v10, v9, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 197
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v10, 0x9

    const-string v11, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    invoke-direct {v0, v11, v10, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 218
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v11, 0xa

    const-string v12, "WRITE_DATES_WITH_ZONE_ID"

    invoke-direct {v0, v12, v11, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 235
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v12, 0xb

    const-string v13, "WRITE_DURATIONS_AS_TIMESTAMPS"

    invoke-direct {v0, v13, v12, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 245
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v13, 0xc

    const-string v14, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    invoke-direct {v0, v14, v13, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 257
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v14, 0xd

    const-string v15, "WRITE_ENUMS_USING_TO_STRING"

    invoke-direct {v0, v15, v14, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 272
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v15, 0xe

    const-string v14, "WRITE_ENUMS_USING_INDEX"

    invoke-direct {v0, v14, v15, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 280
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v14, 0xf

    const-string v15, "WRITE_NULL_MAP_VALUES"

    invoke-direct {v0, v15, v14, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 293
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v15, 0x10

    const-string v14, "WRITE_EMPTY_JSON_ARRAYS"

    invoke-direct {v0, v14, v15, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 316
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v14, 0x11

    const-string v15, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    invoke-direct {v0, v15, v14, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 334
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v15, 0x12

    const-string v14, "WRITE_BIGDECIMAL_AS_PLAIN"

    invoke-direct {v0, v14, v15, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 352
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v14, 0x13

    const-string v15, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    invoke-direct {v0, v15, v14, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 362
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v15, 0x14

    const-string v14, "ORDER_MAP_ENTRIES_BY_KEYS"

    invoke-direct {v0, v14, v15, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 384
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v14, 0x15

    const-string v15, "EAGER_SERIALIZER_FETCH"

    invoke-direct {v0, v15, v14, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 405
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    const-string v15, "USE_EQUALITY_FOR_OBJECT_ID"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v14, 0x17

    new-array v14, v14, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 16
    sget-object v15, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v15, v14, v1

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v3

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v4

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v5

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v6

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v7

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v8

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v9

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v10

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v11

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v12

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    aput-object v1, v14, v13

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    const/16 v1, 0x16

    aput-object v0, v14, v1

    sput-object v14, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 412
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    .line 413
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 16
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/SerializationFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 424
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMask()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    return v0
.end method
