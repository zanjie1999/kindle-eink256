.class public Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;
.super Landroid/widget/Button;
.source "InfoCardPronunciationButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;
    }
.end annotation


# instance fields
.field private m_audioPlayIcon:I

.field private m_audioStopIcon:I

.field private m_currentIconState:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

.field private final m_spinningProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object p2, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_currentIconState:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    .line 55
    new-instance p2, Landroid/widget/ProgressBar;

    sget v0, Lcom/amazon/kindle/krl/R$style;->pronunciation_button_style:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_spinningProgressBar:Landroid/widget/ProgressBar;

    .line 56
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->infocard_audio_play_dark:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioPlayIcon:I

    .line 57
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->infocard_audio_stop_dark:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioStopIcon:I

    return-void
.end method

.method private setSpinnerVisibility(I)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_spinningProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_spinningProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_spinningProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->translation_speech_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_spinningProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_spinningProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private updateIconsForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 117
    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 127
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->infocard_audio_play_light:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioPlayIcon:I

    .line 128
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->infocard_audio_stop_light:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioStopIcon:I

    goto :goto_0

    .line 120
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->infocard_audio_play_dark:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioPlayIcon:I

    .line 121
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->infocard_audio_stop_dark:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioStopIcon:I

    :goto_0
    return-void
.end method


# virtual methods
.method public toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V
    .locals 5

    .line 69
    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$1;->$SwitchMap$com$amazon$kcp$reader$ui$InfoCardPronunciationButton$IconState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 95
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->setSpinnerVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IconState should not have a default state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 89
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->setSpinnerVisibility(I)V

    goto :goto_0

    .line 80
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioStopIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 81
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/krl/R$string;->translation_speech_stop:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 84
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->setSpinnerVisibility(I)V

    goto :goto_0

    .line 72
    :cond_3
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioPlayIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/krl/R$string;->translation_speech_play:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 76
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->setSpinnerVisibility(I)V

    .line 102
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_currentIconState:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    return-void
.end method

.method public updateSpeakIconColor(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->updateIconsForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 138
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_currentIconState:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->SPEAK_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    if-ne p1, v0, :cond_0

    .line 139
    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioPlayIcon:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->STOP_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    if-ne p1, v0, :cond_1

    .line 141
    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->m_audioStopIcon:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
