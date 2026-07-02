.class public final enum Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;
.super Ljava/lang/Enum;
.source "DeserializationConfig.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;",
        ">;",
        "Lcom/amazon/org/codehaus/jackson/map/MapperConfig$ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum AUTO_DETECT_CREATORS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum AUTO_DETECT_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum FAIL_ON_UNKNOWN_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum READ_ENUMS_USING_TO_STRING:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum UNWRAP_ROOT_VALUE:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_BIG_DECIMAL_FOR_FLOATS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_BIG_INTEGER_FOR_INTS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_GETTERS_AS_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 66
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "USE_ANNOTATIONS"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 82
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v3, "AUTO_DETECT_SETTERS"

    invoke-direct {v0, v3, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 98
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v3, 0x2

    const-string v4, "AUTO_DETECT_CREATORS"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 115
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v4, 0x3

    const-string v5, "AUTO_DETECT_FIELDS"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 133
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v5, 0x4

    const-string v6, "USE_GETTERS_AS_SETTERS"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 143
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v6, 0x5

    const-string v7, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    invoke-direct {v0, v7, v6, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 165
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v7, 0x6

    const-string v8, "USE_BIG_DECIMAL_FOR_FLOATS"

    invoke-direct {v0, v8, v7, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 183
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v8, 0x7

    const-string v9, "USE_BIG_INTEGER_FOR_INTS"

    invoke-direct {v0, v9, v8, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 197
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v9, 0x8

    const-string v10, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    invoke-direct {v0, v10, v9, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 213
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v10, 0x9

    const-string v11, "READ_ENUMS_USING_TO_STRING"

    invoke-direct {v0, v11, v10, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 238
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v11, 0xa

    const-string v12, "FAIL_ON_UNKNOWN_PROPERTIES"

    invoke-direct {v0, v12, v11, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 253
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v12, 0xb

    const-string v13, "FAIL_ON_NULL_FOR_PRIMITIVES"

    invoke-direct {v0, v13, v12, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 271
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v13, 0xc

    const-string v14, "FAIL_ON_NUMBERS_FOR_ENUMS"

    invoke-direct {v0, v14, v13, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 291
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v14, 0xd

    const-string v15, "WRAP_EXCEPTIONS"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 310
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v15, 0xe

    const-string v14, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    invoke-direct {v0, v14, v15, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 322
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v14, 0xf

    const-string v15, "UNWRAP_ROOT_VALUE"

    invoke-direct {v0, v15, v14, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 341
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v15, 0x10

    const-string v14, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    invoke-direct {v0, v14, v15, v2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v14, 0x11

    new-array v14, v14, [Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 48
    sget-object v16, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v16, v14, v2

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v14, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 348
    iput-boolean p3, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->_defaultState:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 2

    .line 355
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
