.class public final enum Lcom/amazon/ksdk/presets/BookFlag;
.super Ljava/lang/Enum;
.source "BookFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/BookFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum ABOUT_THIS_BOOK_UNAVAILABLE:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum FORCE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum FORCE_DISABLE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum HAS_AUDIBLE_COMPANION:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum HAS_CHAPTERS:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum HAS_PAGE_NUMBERS:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum HAS_PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum HAS_PUBLISHER_FONT:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum IS_DEFAULT_DICT:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum IS_SAMPLE:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum IS_SHORT_STORY:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum PERIODICAL_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum RIGHT_TO_LEFT_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum SUPPORT_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum SUPPORT_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

.field public static final enum TOP_TO_BOTTOM_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v1, 0x0

    const-string v2, "HAS_PUBLISHER_FONT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PUBLISHER_FONT:Lcom/amazon/ksdk/presets/BookFlag;

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v2, 0x1

    const-string v3, "HAS_PAGE_ORIENTATION_LOCK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/BookFlag;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v3, 0x2

    const-string v4, "HAS_AUDIBLE_COMPANION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->HAS_AUDIBLE_COMPANION:Lcom/amazon/ksdk/presets/BookFlag;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v4, 0x3

    const-string v5, "HAS_PAGE_NUMBERS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PAGE_NUMBERS:Lcom/amazon/ksdk/presets/BookFlag;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v5, 0x4

    const-string v6, "HAS_CHAPTERS"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->HAS_CHAPTERS:Lcom/amazon/ksdk/presets/BookFlag;

    .line 18
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v6, 0x5

    const-string v7, "TOP_TO_BOTTOM_READING_MODE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->TOP_TO_BOTTOM_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    .line 19
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v7, 0x6

    const-string v8, "RIGHT_TO_LEFT_READING_MODE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->RIGHT_TO_LEFT_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    .line 21
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/4 v8, 0x7

    const-string v9, "PERIODICAL_REPLICA_READING_MODE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->PERIODICAL_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    .line 22
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v9, 0x8

    const-string v10, "IS_SAMPLE"

    invoke-direct {v0, v10, v9}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->IS_SAMPLE:Lcom/amazon/ksdk/presets/BookFlag;

    .line 23
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v10, 0x9

    const-string v11, "FORCE_CONTINUOUS_SCROLL"

    invoke-direct {v0, v11, v10}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->FORCE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    .line 24
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v11, 0xa

    const-string v12, "FORCE_DISABLE_CONTINUOUS_SCROLL"

    invoke-direct {v0, v12, v11}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->FORCE_DISABLE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    .line 25
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v12, 0xb

    const-string v13, "ABOUT_THIS_BOOK_UNAVAILABLE"

    invoke-direct {v0, v13, v12}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->ABOUT_THIS_BOOK_UNAVAILABLE:Lcom/amazon/ksdk/presets/BookFlag;

    .line 26
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v13, 0xc

    const-string v14, "SYSTEM_THEME_LIGHT"

    invoke-direct {v0, v14, v13}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    .line 27
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v14, 0xd

    const-string v15, "SYSTEM_THEME_DARK"

    invoke-direct {v0, v15, v14}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    .line 28
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v15, 0xe

    const-string v14, "IS_DEFAULT_DICT"

    invoke-direct {v0, v14, v15}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->IS_DEFAULT_DICT:Lcom/amazon/ksdk/presets/BookFlag;

    .line 29
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v14, 0xf

    const-string v15, "SUPPORT_CONTINUOUS_SCROLL"

    invoke-direct {v0, v15, v14}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->SUPPORT_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    .line 31
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v15, 0x10

    const-string v14, "SUPPORT_REPLICA_READING_MODE"

    invoke-direct {v0, v14, v15}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->SUPPORT_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    .line 32
    new-instance v0, Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v14, 0x11

    const-string v15, "IS_SHORT_STORY"

    invoke-direct {v0, v15, v14}, Lcom/amazon/ksdk/presets/BookFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/BookFlag;->IS_SHORT_STORY:Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v15, 0x12

    new-array v15, v15, [Lcom/amazon/ksdk/presets/BookFlag;

    .line 11
    sget-object v16, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PUBLISHER_FONT:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v16, v15, v1

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_AUDIBLE_COMPANION:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v3

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PAGE_NUMBERS:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v4

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_CHAPTERS:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v5

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->TOP_TO_BOTTOM_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v6

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->RIGHT_TO_LEFT_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v7

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->PERIODICAL_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v8

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->IS_SAMPLE:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v9

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->FORCE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v10

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->FORCE_DISABLE_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v11

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->ABOUT_THIS_BOOK_UNAVAILABLE:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v12

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_LIGHT:Lcom/amazon/ksdk/presets/BookFlag;

    aput-object v1, v15, v13

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->SYSTEM_THEME_DARK:Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->IS_DEFAULT_DICT:Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->SUPPORT_CONTINUOUS_SCROLL:Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v2, 0xf

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->SUPPORT_REPLICA_READING_MODE:Lcom/amazon/ksdk/presets/BookFlag;

    const/16 v2, 0x10

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/amazon/ksdk/presets/BookFlag;->$VALUES:[Lcom/amazon/ksdk/presets/BookFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/BookFlag;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/ksdk/presets/BookFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/BookFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/BookFlag;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/ksdk/presets/BookFlag;->$VALUES:[Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/BookFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/BookFlag;

    return-object v0
.end method
