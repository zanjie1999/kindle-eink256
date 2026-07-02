.class public final enum Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;
.super Ljava/lang/Enum;
.source "GlossDictionaryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

.field public static final enum EN_EN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

.field public static final enum EN_ZH:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

.field public static final enum ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;


# instance fields
.field private final definitionAndExampleResId:I

.field private final definitionFormatResId:I

.field private final definitionLanguage:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final lastPollTimeKey:Ljava/lang/String;

.field private final lemmaLanguage:Ljava/lang/String;

.field private final versionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 12
    new-instance v10, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    sget v8, Lcom/amazon/kindle/ww/R$string;->wordwise_card_definition_format:I

    sget v9, Lcom/amazon/kindle/ww/R$string;->wordwise_card_definition_sentence_format:I

    const-string v1, "EN_EN"

    const/4 v2, 0x0

    const-string v3, "kll.en.en"

    const-string v4, "en"

    const-string v5, "en"

    const-string v6, "WordWiseVersion"

    const-string v7, "lastPollTime"

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v10, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->EN_EN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    sget v19, Lcom/amazon/kindle/ww/R$string;->wordwise_card_definition_format_cn:I

    sget v20, Lcom/amazon/kindle/ww/R$string;->wordwise_card_definition_sentence_format_cn:I

    const-string v12, "EN_ZH"

    const/4 v13, 0x1

    const-string v14, "kll.en.zh"

    const-string v15, "en"

    const-string/jumbo v16, "zh"

    const-string v17, "WordwiseChineseVersion"

    const-string v18, "ChineseLastPollTime"

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->EN_ZH:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    const-string v2, "ZH_PN"

    const/4 v3, 0x2

    const-string v4, "kll.zh.pn"

    const-string/jumbo v5, "zh"

    const-string v6, "pn"

    const-string v7, "WordWisePinyinVersion"

    const-string v8, "PinyinLastPollTime"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    .line 11
    sget-object v2, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->EN_EN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->EN_ZH:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->$VALUES:[Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 34
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->id:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->lemmaLanguage:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->definitionLanguage:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->versionKey:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->lastPollTimeKey:Ljava/lang/String;

    .line 54
    iput p8, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->definitionFormatResId:I

    .line 55
    iput p9, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->definitionAndExampleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->$VALUES:[Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    return-object v0
.end method


# virtual methods
.method public getDefinitionAndExampleResId()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->definitionAndExampleResId:I

    return v0
.end method

.method public getDefinitionFormatResId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->definitionFormatResId:I

    return v0
.end method

.method public getDefinitionLanguage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->definitionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPollTimeKey()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->lastPollTimeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLemmaLanguage()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->lemmaLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionKey()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->versionKey:Ljava/lang/String;

    return-object v0
.end method
