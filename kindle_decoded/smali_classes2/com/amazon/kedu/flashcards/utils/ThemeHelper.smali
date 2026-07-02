.class public final Lcom/amazon/kedu/flashcards/utils/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# direct methods
.method public static getCancelIcon()I
    .locals 1

    .line 23
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget v0, Lcom/amazon/kedu/flashcards/R$drawable;->fc_ic_cancel_light:I

    goto :goto_0

    .line 31
    :cond_0
    sget v0, Lcom/amazon/kedu/flashcards/R$drawable;->fc_ic_cancel:I

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget v0, Lcom/amazon/kedu/flashcards/R$drawable;->fc_nonnln_ic_cancel_light:I

    goto :goto_0

    .line 42
    :cond_2
    sget v0, Lcom/amazon/kedu/flashcards/R$drawable;->fc_nonnln_ic_cancel:I

    :goto_0
    return v0
.end method

.method public static isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
