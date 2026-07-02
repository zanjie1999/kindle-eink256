.class public Lcom/amazon/overlay/translation/TranslationLanguageButton;
.super Landroid/widget/Button;
.source "TranslationLanguageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;
    }
.end annotation


# instance fields
.field private m_selected:Lcom/amazon/kcp/translation/Language;

.field private m_selectedButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final m_selectionOnClickListener:Landroid/view/View$OnClickListener;

.field private final m_supportedLangauges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/translation/Language;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p2, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;

    invoke-direct {p2}, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;-><init>()V

    iput-object p2, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_selectionOnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    invoke-static {p1}, Lcom/amazon/kcp/translation/Languages;->getSupportedLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_supportedLangauges:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/overlay/translation/TranslationLanguageButton;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_supportedLangauges:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/overlay/translation/TranslationLanguageButton;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_selectedButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public getSelectedItem()Lcom/amazon/kcp/translation/Language;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_selected:Lcom/amazon/kcp/translation/Language;

    return-object v0
.end method

.method public getSelectionItemAt(I)Lcom/amazon/kcp/translation/Language;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_supportedLangauges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/translation/Language;

    return-object p1
.end method

.method public setOnClickAndSelectionConfirmedListeners(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_selectionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object p2, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_selectedButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setSelection(Lcom/amazon/kcp/translation/Language;)V
    .locals 1

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton;->m_selected:Lcom/amazon/kcp/translation/Language;

    return-void
.end method

.method public setStyle(Lcom/amazon/overlay/translation/TranslationColorModeResources;)V
    .locals 4

    .line 173
    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 175
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 177
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    .line 178
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    .line 179
    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationColorModeResources;->getSelectionButtonTextBackground()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 180
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method
