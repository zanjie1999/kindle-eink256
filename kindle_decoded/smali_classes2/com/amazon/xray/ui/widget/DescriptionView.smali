.class public Lcom/amazon/xray/ui/widget/DescriptionView;
.super Landroid/widget/ScrollView;
.source "DescriptionView.java"


# instance fields
.field private licenseButton:Landroid/widget/Button;

.field private licenseText:Landroid/widget/TextView;

.field onNavigateToSourceRunnable:Ljava/lang/Runnable;

.field private readingStreamsContext:Ljava/lang/String;

.field private sourceButton:Landroid/widget/Button;

.field private sourceLabel:Landroid/widget/TextView;

.field private sourceText:Landroid/widget/TextView;

.field private text:Lcom/amazon/xray/ui/widget/EnhancedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/xray/ui/widget/DescriptionView;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/DescriptionView;->navigateToUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/xray/ui/widget/DescriptionView;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->readingStreamsContext:Ljava/lang/String;

    return-object p0
.end method

.method private navigateToUrl(Ljava/lang/String;)V
    .locals 3

    .line 195
    invoke-static {p1}, Lcom/amazon/xray/ui/util/StoreUrlUtil;->isStoreUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p1}, Lcom/amazon/xray/ui/util/StoreUrlUtil;->loadDetailPage(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 60
    sget v0, Lcom/amazon/kindle/xray/R$layout;->xray_view_description_v2:I

    .line 61
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_description_text:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/ui/widget/EnhancedTextView;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->text:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    .line 63
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_description_license_text:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseText:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_description_license_button:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseButton:Landroid/widget/Button;

    .line 65
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_description_source_label:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceLabel:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_description_source_text:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceText:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_description_source_button:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceButton:Landroid/widget/Button;

    .line 70
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/xray/ui/widget/DescriptionView;->setTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V

    return-void
.end method

.method public setDescription(Lcom/amazon/xray/model/object/Description;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->text:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->isFromBook()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setShowingQuotes(Z)V

    .line 100
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->text:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLicenseLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLicenseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLicenseLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseButton:Landroid/widget/Button;

    new-instance v2, Lcom/amazon/xray/ui/widget/DescriptionView$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/xray/ui/widget/DescriptionView$1;-><init>(Lcom/amazon/xray/ui/widget/DescriptionView;Lcom/amazon/xray/model/object/Description;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLicenseLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceButton:Landroid/widget/Button;

    new-instance v2, Lcom/amazon/xray/ui/widget/DescriptionView$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/xray/ui/widget/DescriptionView$2;-><init>(Lcom/amazon/xray/ui/widget/DescriptionView;Lcom/amazon/xray/model/object/Description;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setOnNavigateToSourceRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->onNavigateToSourceRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setReadingStreamsContext(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->readingStreamsContext:Ljava/lang/String;

    return-void
.end method

.method public setTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->text:Lcom/amazon/xray/ui/widget/EnhancedTextView;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->licenseButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSecondaryTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/DescriptionView;->sourceButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$color;->xray_info_card_link_text_color_v2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
