.class public Lcom/amazon/krf/platform/theme/ColorThemeRepository;
.super Ljava/lang/Object;
.source "ColorThemeRepository.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 3

    .line 35
    invoke-static {}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/theme/ColorTheme;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/theme/ColorTheme;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/theme/ColorTheme;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native getColorThemes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/theme/ColorTheme;",
            ">;"
        }
    .end annotation
.end method

.method public static getCurrentColorThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/theme/ColorTheme;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
