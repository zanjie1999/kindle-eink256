.class public final enum Lcom/amazon/kcp/font/DownloadedFont;
.super Ljava/lang/Enum;
.source "DownloadedFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/DownloadedFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/DownloadedFont;

.field public static final enum GOTHIC:Lcom/amazon/kcp/font/DownloadedFont;

.field public static final enum MINCHO:Lcom/amazon/kcp/font/DownloadedFont;

.field public static final enum MYINGHEIS:Lcom/amazon/kcp/font/DownloadedFont;

.field public static final enum SONGS:Lcom/amazon/kcp/font/DownloadedFont;


# instance fields
.field private final font:Lcom/mobipocket/android/drawing/FontFamily;

.field private final fontFiles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requiringLanguages:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v6, Lcom/amazon/kcp/font/DownloadedFont;

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const-string v0, "TBMinchoMedium_213.ttf"

    const-string v1, "TBMinchoBold_213.ttf"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/mobipocket/android/drawing/FontFamily;->TBMINCHOMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v1, "MINCHO"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/font/DownloadedFont;-><init>(Ljava/lang/String;ILjava/util/Collection;Ljava/util/Collection;Lcom/mobipocket/android/drawing/FontFamily;)V

    sput-object v6, Lcom/amazon/kcp/font/DownloadedFont;->MINCHO:Lcom/amazon/kcp/font/DownloadedFont;

    .line 27
    new-instance v0, Lcom/amazon/kcp/font/DownloadedFont;

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    const-string v1, "TBGothicMed_213.ttf"

    const-string v2, "TBGothicBold_213.ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    sget-object v12, Lcom/mobipocket/android/drawing/FontFamily;->TBGOTHICMED:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v8, "GOTHIC"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/font/DownloadedFont;-><init>(Ljava/lang/String;ILjava/util/Collection;Ljava/util/Collection;Lcom/mobipocket/android/drawing/FontFamily;)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadedFont;->GOTHIC:Lcom/amazon/kcp/font/DownloadedFont;

    .line 31
    new-instance v0, Lcom/amazon/kcp/font/DownloadedFont;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v1, "MYingHeiSMedium.ttf"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v2, "MYINGHEIS"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/font/DownloadedFont;-><init>(Ljava/lang/String;ILjava/util/Collection;Ljava/util/Collection;Lcom/mobipocket/android/drawing/FontFamily;)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadedFont;->MYINGHEIS:Lcom/amazon/kcp/font/DownloadedFont;

    .line 35
    new-instance v0, Lcom/amazon/kcp/font/DownloadedFont;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    const-string v1, "STBShusongRegular.ttf"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    sget-object v12, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v8, "SONGS"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/font/DownloadedFont;-><init>(Ljava/lang/String;ILjava/util/Collection;Ljava/util/Collection;Lcom/mobipocket/android/drawing/FontFamily;)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadedFont;->SONGS:Lcom/amazon/kcp/font/DownloadedFont;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kcp/font/DownloadedFont;

    .line 19
    sget-object v2, Lcom/amazon/kcp/font/DownloadedFont;->MINCHO:Lcom/amazon/kcp/font/DownloadedFont;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/font/DownloadedFont;->GOTHIC:Lcom/amazon/kcp/font/DownloadedFont;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/font/DownloadedFont;->MYINGHEIS:Lcom/amazon/kcp/font/DownloadedFont;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/font/DownloadedFont;->$VALUES:[Lcom/amazon/kcp/font/DownloadedFont;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Collection;Ljava/util/Collection;Lcom/mobipocket/android/drawing/FontFamily;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/amazon/kcp/font/DownloadedFont;->requiringLanguages:Ljava/util/Collection;

    .line 43
    iput-object p4, p0, Lcom/amazon/kcp/font/DownloadedFont;->fontFiles:Ljava/util/Collection;

    .line 44
    iput-object p5, p0, Lcom/amazon/kcp/font/DownloadedFont;->font:Lcom/mobipocket/android/drawing/FontFamily;

    return-void
.end method

.method public static areAnyFontsRequiredByLanguage(Ljava/lang/String;)Z
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/amazon/kcp/font/DownloadedFont;->getFontsRequiredByLanguage(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getFontsRequiredByLanguage(Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/font/DownloadedFont;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "zh-hant"

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 100
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/font/DownloadedFont;->values()[Lcom/amazon/kcp/font/DownloadedFont;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 101
    invoke-virtual {v4}, Lcom/amazon/kcp/font/DownloadedFont;->getRequiringLanguages()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static valueOf(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DownloadedFont;
    .locals 5

    .line 120
    invoke-static {}, Lcom/amazon/kcp/font/DownloadedFont;->values()[Lcom/amazon/kcp/font/DownloadedFont;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 121
    invoke-virtual {v3}, Lcom/amazon/kcp/font/DownloadedFont;->getFont()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/DownloadedFont;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/font/DownloadedFont;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/DownloadedFont;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/DownloadedFont;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kcp/font/DownloadedFont;->$VALUES:[Lcom/amazon/kcp/font/DownloadedFont;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/DownloadedFont;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/DownloadedFont;

    return-object v0
.end method


# virtual methods
.method public getFont()Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/font/DownloadedFont;->font:Lcom/mobipocket/android/drawing/FontFamily;

    return-object v0
.end method

.method public getFontFiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/font/DownloadedFont;->fontFiles:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRequiringLanguages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/font/DownloadedFont;->requiringLanguages:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
