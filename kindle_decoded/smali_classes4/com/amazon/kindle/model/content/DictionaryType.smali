.class public final enum Lcom/amazon/kindle/model/content/DictionaryType;
.super Ljava/lang/Enum;
.source "DictionaryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/DictionaryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/DictionaryType;

.field private static DICT_TAG:Ljava/lang/String;

.field public static final enum FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

.field private static FREE_DICT_TAG:Ljava/lang/String;

.field public static final enum NONE:Lcom/amazon/kindle/model/content/DictionaryType;

.field public static final enum USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/amazon/kindle/model/content/DictionaryType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/model/content/DictionaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    new-instance v0, Lcom/amazon/kindle/model/content/DictionaryType;

    const/4 v2, 0x1

    const-string v3, "USER_DICT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/model/content/DictionaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    new-instance v0, Lcom/amazon/kindle/model/content/DictionaryType;

    const/4 v3, 0x2

    const-string v4, "FREE_DICT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/model/content/DictionaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/model/content/DictionaryType;

    .line 9
    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->$VALUES:[Lcom/amazon/kindle/model/content/DictionaryType;

    const-string v0, "dict"

    .line 12
    sput-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->DICT_TAG:Ljava/lang/String;

    const-string v0, "free_dict"

    .line 13
    sput-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTypeFromTags(Ljava/lang/String;)Lcom/amazon/kindle/model/content/DictionaryType;
    .locals 5

    .line 23
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eqz p0, :cond_2

    const-string v1, ","

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 26
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 28
    sget-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->DICT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    goto :goto_1

    .line 33
    :cond_0
    sget-object v4, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/DictionaryType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/DictionaryType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/DictionaryType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->$VALUES:[Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/DictionaryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/DictionaryType;

    return-object v0
.end method
