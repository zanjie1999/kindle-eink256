.class public final enum Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;
.super Ljava/lang/Enum;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_COMMENTS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_NUMERIC_LEADING_ZEROS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_SINGLE_QUOTES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum AUTO_CLOSE_SOURCE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum CANONICALIZE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum INTERN_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 69
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 87
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const-string v3, "ALLOW_COMMENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 103
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/4 v3, 0x2

    const-string v4, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 121
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/4 v4, 0x3

    const-string v5, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v5, v4, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 138
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/4 v5, 0x4

    const-string v6, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v6, v5, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 153
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/4 v6, 0x5

    const-string v7, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    invoke-direct {v0, v7, v6, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 169
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/4 v7, 0x6

    const-string v8, "ALLOW_NUMERIC_LEADING_ZEROS"

    invoke-direct {v0, v8, v7, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 187
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/4 v8, 0x7

    const-string v9, "ALLOW_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v9, v8, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 206
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/16 v9, 0x8

    const-string v10, "INTERN_FIELD_NAMES"

    invoke-direct {v0, v10, v9, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 216
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/16 v10, 0x9

    const-string v11, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v0, v11, v10, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    .line 53
    sget-object v12, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v12, v11, v2

    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v11, v1

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput-boolean p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 230
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->values()[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 231
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v0

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
    .locals 2

    .line 246
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
