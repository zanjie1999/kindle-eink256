.class public final enum Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;
.super Ljava/lang/Enum;
.source "WordWisePreferences.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum PINYIN_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

.field public static final enum WORDWISE_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v1, 0x0

    const-string v2, "WORDWISE_ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 10
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v2, 0x1

    const-string v3, "WORDWISE_VISIBLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 11
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v3, 0x2

    const-string v4, "WORDWISE_SHOW_MULTIPLE_CHOICE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 12
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v4, 0x3

    const-string v5, "WORDWISE_DIFFICULTY_LEVEL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 13
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v5, 0x4

    const-string v6, "WORDWISE_LANGUAGE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 14
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v6, 0x5

    const-string v7, "PINYIN_ENABLED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 15
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v7, 0x6

    const-string v8, "PINYIN_DIFFICULTY_LEVEL"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 16
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/4 v8, 0x7

    const-string v9, "PINYIN_VISIBLE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 8
    sget-object v10, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->$VALUES:[Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->$VALUES:[Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, [Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    return-object v0
.end method
