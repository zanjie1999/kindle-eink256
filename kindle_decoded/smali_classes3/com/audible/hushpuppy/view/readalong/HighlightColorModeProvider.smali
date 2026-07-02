.class public final Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;
.super Ljava/lang/Object;
.source "HighlightColorModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentGreenHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentSepiaHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentBlackHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentWhiteHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$GreenHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$SepiaHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$BlackHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$WhiteHighlightColorMode;,
        Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$HighlightColorModeBase;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final colorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            "Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;",
            ">;"
        }
    .end annotation
.end field

.field private final transparentColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            "Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->transparentColorMap:Ljava/util/HashMap;

    .line 46
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$WhiteHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$WhiteHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$BlackHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$BlackHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$SepiaHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$SepiaHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$GreenHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$GreenHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->transparentColorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentWhiteHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentWhiteHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->transparentColorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentBlackHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentBlackHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->transparentColorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentSepiaHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentSepiaHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->transparentColorMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    new-instance v2, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentGreenHighlightColorMode;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$TransparentGreenHighlightColorMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 28
    sget-object v0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method


# virtual methods
.method public getHighlightColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;Z)Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->transparentColorMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;

    return-object p1

    .line 67
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No highlight defined for color mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 68
    iget-object p1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->transparentColorMap:Ljava/util/HashMap;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->colorMap:Ljava/util/HashMap;

    :goto_1
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;

    return-object p1
.end method
