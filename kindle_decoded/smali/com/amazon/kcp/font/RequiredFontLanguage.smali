.class public final enum Lcom/amazon/kcp/font/RequiredFontLanguage;
.super Ljava/lang/Enum;
.source "RequiredFontLanguage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/RequiredFontLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/RequiredFontLanguage;

.field public static final enum GUJARATI:Lcom/amazon/kcp/font/RequiredFontLanguage;

.field public static final enum HINDI:Lcom/amazon/kcp/font/RequiredFontLanguage;

.field public static final enum MALAYALAM:Lcom/amazon/kcp/font/RequiredFontLanguage;

.field public static final enum MARATHI:Lcom/amazon/kcp/font/RequiredFontLanguage;

.field public static final enum TAMIL:Lcom/amazon/kcp/font/RequiredFontLanguage;


# instance fields
.field private language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/amazon/kcp/font/RequiredFontLanguage;

    const/4 v1, 0x0

    const-string v2, "TAMIL"

    const-string/jumbo v3, "ta"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/font/RequiredFontLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/RequiredFontLanguage;->TAMIL:Lcom/amazon/kcp/font/RequiredFontLanguage;

    .line 11
    new-instance v0, Lcom/amazon/kcp/font/RequiredFontLanguage;

    const/4 v2, 0x1

    const-string v3, "MARATHI"

    const-string/jumbo v4, "mr"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/font/RequiredFontLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/RequiredFontLanguage;->MARATHI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    .line 12
    new-instance v0, Lcom/amazon/kcp/font/RequiredFontLanguage;

    const/4 v3, 0x2

    const-string v4, "MALAYALAM"

    const-string/jumbo v5, "ml"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/font/RequiredFontLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/RequiredFontLanguage;->MALAYALAM:Lcom/amazon/kcp/font/RequiredFontLanguage;

    .line 13
    new-instance v0, Lcom/amazon/kcp/font/RequiredFontLanguage;

    const/4 v4, 0x3

    const-string v5, "HINDI"

    const-string v6, "hi"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/font/RequiredFontLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/RequiredFontLanguage;->HINDI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    .line 14
    new-instance v0, Lcom/amazon/kcp/font/RequiredFontLanguage;

    const/4 v5, 0x4

    const-string v6, "GUJARATI"

    const-string v7, "gu"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/font/RequiredFontLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/font/RequiredFontLanguage;->GUJARATI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/font/RequiredFontLanguage;

    .line 9
    sget-object v7, Lcom/amazon/kcp/font/RequiredFontLanguage;->TAMIL:Lcom/amazon/kcp/font/RequiredFontLanguage;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->MARATHI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->MALAYALAM:Lcom/amazon/kcp/font/RequiredFontLanguage;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/font/RequiredFontLanguage;->HINDI:Lcom/amazon/kcp/font/RequiredFontLanguage;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/font/RequiredFontLanguage;->$VALUES:[Lcom/amazon/kcp/font/RequiredFontLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/amazon/kcp/font/RequiredFontLanguage;->language:Ljava/lang/String;

    return-void
.end method

.method public static doesRequireFont(Ljava/lang/String;)Z
    .locals 6

    .line 32
    invoke-static {}, Lcom/amazon/kcp/font/RequiredFontLanguage;->values()[Lcom/amazon/kcp/font/RequiredFontLanguage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 33
    invoke-virtual {v4}, Lcom/amazon/kcp/font/RequiredFontLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/amazon/kcp/font/FontUtils;->getBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/RequiredFontLanguage;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kcp/font/RequiredFontLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/RequiredFontLanguage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/RequiredFontLanguage;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kcp/font/RequiredFontLanguage;->$VALUES:[Lcom/amazon/kcp/font/RequiredFontLanguage;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/RequiredFontLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/RequiredFontLanguage;

    return-object v0
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/font/RequiredFontLanguage;->language:Ljava/lang/String;

    return-object v0
.end method
