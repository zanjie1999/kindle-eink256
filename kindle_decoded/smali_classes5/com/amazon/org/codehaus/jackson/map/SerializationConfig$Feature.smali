.class public final enum Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;
.super Ljava/lang/Enum;
.source "SerializationConfig.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;",
        ">;",
        "Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum AUTO_DETECT_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum AUTO_DETECT_IS_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum CLOSE_CLOSEABLE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum DEFAULT_VIEW_INCLUSION:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum FAIL_ON_EMPTY_BEANS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum INDENT_OUTPUT:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum REQUIRE_SETTERS_FOR_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum SORT_PROPERTIES_ALPHABETICALLY:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum USE_STATIC_TYPING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRAP_ROOT_VALUE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_EMPTY_JSON_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_ENUMS_USING_INDEX:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_ENUMS_USING_TO_STRING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_NULL_MAP_VALUES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 63
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "USE_ANNOTATIONS"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 82
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v3, "AUTO_DETECT_GETTERS"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 98
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v3, 0x2

    const-string v4, "AUTO_DETECT_IS_GETTERS"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_IS_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 115
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v4, 0x3

    const-string v5, "AUTO_DETECT_FIELDS"

    invoke-direct {v0, v5, v4, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 127
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v5, 0x4

    const-string v6, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    invoke-direct {v0, v6, v5, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 141
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v6, 0x5

    const-string v7, "REQUIRE_SETTERS_FOR_GETTERS"

    invoke-direct {v0, v7, v6, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 163
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v7, 0x6

    const-string v8, "WRITE_NULL_PROPERTIES"

    invoke-direct {v0, v8, v7, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 176
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v8, 0x7

    const-string v9, "USE_STATIC_TYPING"

    invoke-direct {v0, v9, v8, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 194
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v9, 0x8

    const-string v10, "DEFAULT_VIEW_INCLUSION"

    invoke-direct {v0, v10, v9, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->DEFAULT_VIEW_INCLUSION:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 209
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v10, 0x9

    const-string v11, "WRAP_ROOT_VALUE"

    invoke-direct {v0, v11, v10, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 228
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v11, 0xa

    const-string v12, "INDENT_OUTPUT"

    invoke-direct {v0, v12, v11, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 244
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v12, 0xb

    const-string v13, "SORT_PROPERTIES_ALPHABETICALLY"

    invoke-direct {v0, v13, v12, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 267
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v13, 0xc

    const-string v14, "FAIL_ON_EMPTY_BEANS"

    invoke-direct {v0, v14, v13, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->FAIL_ON_EMPTY_BEANS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 287
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v14, 0xd

    const-string v15, "WRAP_EXCEPTIONS"

    invoke-direct {v0, v15, v14, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 311
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v15, 0xe

    const-string v14, "CLOSE_CLOSEABLE"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 325
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v14, 0xf

    const-string v15, "FLUSH_AFTER_WRITE_VALUE"

    invoke-direct {v0, v15, v14, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 348
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v15, 0x10

    const-string v14, "WRITE_DATES_AS_TIMESTAMPS"

    invoke-direct {v0, v14, v15, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 361
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v14, 0x11

    const-string v15, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 371
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v15, 0x12

    const-string v14, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 386
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v14, 0x13

    const-string v15, "WRITE_ENUMS_USING_TO_STRING"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_TO_STRING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 401
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v15, 0x14

    const-string v14, "WRITE_ENUMS_USING_INDEX"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_INDEX:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 411
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v14, 0x15

    const-string v15, "WRITE_NULL_MAP_VALUES"

    invoke-direct {v0, v15, v14, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 424
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v15, "WRITE_EMPTY_JSON_ARRAYS"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v14, 0x17

    new-array v14, v14, [Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    .line 45
    sget-object v15, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_IS_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->DEFAULT_VIEW_INCLUSION:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_ROOT_VALUE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->FAIL_ON_EMPTY_BEANS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_TO_STRING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_INDEX:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_MAP_VALUES:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    const/16 v1, 0x16

    aput-object v0, v14, v1

    sput-object v14, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 431
    iput-boolean p3, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->_defaultState:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 2

    .line 438
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
