.class public Lcom/amazon/kindle/socialsharing/util/ThemeProvider;
.super Ljava/lang/Object;
.source "ThemeProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.util.ThemeProvider"


# instance fields
.field private final darkModeHelper:Lcom/amazon/kindle/krx/ui/DarkModeHelper;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/DarkModeHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 31
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;->darkModeHelper:Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    return-void
.end method


# virtual methods
.method public getThemeForShareEntryPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;->darkModeHelper:Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    const-string v1, "READER"

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "THEME_MATCH_READER"

    return-object p1

    .line 58
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    .line 59
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThemeArea for the entry point "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/ThemeProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_2

    const-string p1, "THEME_DARK"

    return-object p1

    :cond_2
    const-string p1, "THEME_LIGHT"

    return-object p1
.end method
