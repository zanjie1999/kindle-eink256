.class public Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;
.super Lcom/amazon/android/docviewer/KindleDocDefinitionView;
.source "DefinitionView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final baseLanguage:Ljava/lang/String;

.field private currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

.field definitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field protected definitionLoadingIndicator:Landroid/widget/ImageView;

.field protected definitionText:Ljava/lang/String;

.field dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

.field dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

.field private displayHeight:I

.field private displayWidth:I

.field fullDefinitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field protected fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

.field protected inlineGoToDictionaryLink:Landroid/widget/TextView;

.field protected isFullDefinitionSupported:Z

.field protected isTwoStepLoadingSupported:Z

.field protected m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

.field protected maximumDefinitionViewHeight:I

.field private volatile offscreenBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/dictionary/IDictionaryDoc;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;ILcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V
    .locals 0

    .line 85
    invoke-direct {p0, p4}, Lcom/amazon/android/docviewer/KindleDocDefinitionView;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    .line 87
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    .line 88
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->baseLanguage:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isFullDefinitionSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isFullDefinitionSupported:Z

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/dcm/R$dimen;->info_card_v2_definition_view_maximum_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->maximumDefinitionViewHeight:I

    .line 93
    invoke-virtual {p6}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getDefinitionLoadingIndicator()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingIndicator:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p6}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getFullDefinitionLoadingIndicator()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p6}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getInlineGoToDictionaryLink()Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    .line 98
    :cond_0
    new-instance p2, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-direct {p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setAdditionalLineSpacing(I)V

    .line 100
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setWidth(I)V

    .line 101
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setHeight(I)V

    .line 103
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-direct {p0, p4}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->getFontConfigForMasterDocument(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setFontConfigurationFile(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 106
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/dcm/R$dimen;->info_card_v2_content_text_font_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setFontSize(F)V

    .line 107
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateFontSelectionBasedOnLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/dcm/R$dimen;->info_card_v2_content_text_font_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setFontSize(F)V

    .line 110
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 115
    new-instance p2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 136
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x16

    if-lt p2, p3, :cond_2

    .line 137
    sget p2, Lcom/amazon/kindle/dcm/R$id;->definition_choose_dictionary_button:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;IZ)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->tryLoadFullDefinitionWithLimitedHeight(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateFullDefinitionLoadingIndicator(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateInlineFullDefinitionLink(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->initializeDefinitionLoadingDrawable()V

    return-void
.end method

.method private calculateSizeOfBitmap(I)Landroid/util/Size;
    .locals 4

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateSizeOfBitmap maximumHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->getFontConfigForDictionary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->getFontConfigForMasterDocument(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setFontConfigurationFile(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->getFallbackFontConfigForDictionary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setFallbackFontConfigurationFile(Ljava/lang/String;)V

    .line 386
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setWidth(I)V

    .line 389
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setHeight(I)V

    .line 391
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isFullDefinitionSupported:Z

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, v2, v3, p1}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->heightForRenderedResult(Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;I)I

    move-result p1

    .line 394
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateHeightOfBitmap height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method private generateFullDefinitionBitmap(Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 3

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateFullDefinitionBitmap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 435
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 437
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setWidth(I)V

    .line 439
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setHeight(I)V

    .line 440
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->renderResultToBitmap(Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/graphics/Bitmap;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionText:Ljava/lang/String;

    .line 442
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->adjustBitmapColor()V

    return-object v1
.end method

.method private getDefinitionLoadingAnimCallback()Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-object v0
.end method

.method private getFallbackFontConfigForDictionary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 303
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 304
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->baseLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFallbackFontConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFontConfigForDictionary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 281
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->baseLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFontConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFontConfigForMasterDocument(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 293
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigurationProvider()Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/AbstractFontConfigurationProvider;->getFontConfigPath(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getFullDefinitionLoadingAnimCallback()Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-object v0
.end method

.method private hideDefinitionLoadingIndicatorIfNeeded()V
    .locals 1

    .line 579
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$5;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initializeDefinitionLoadingDrawable()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-nez v0, :cond_1

    .line 596
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_0

    .line 597
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$drawable;->animated_definition_loading_drawable_dark:I

    invoke-static {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$drawable;->animated_definition_loading_drawable_light:I

    invoke-static {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->getDefinitionLoadingAnimCallback()Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :cond_1
    return-void
.end method

.method private initializeFullDefinitionLoadingDrawable()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-nez v0, :cond_1

    .line 637
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_0

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$drawable;->animated_full_definition_loading_drawable_dark:I

    invoke-static {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$drawable;->animated_full_definition_loading_drawable_light:I

    invoke-static {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_1

    .line 646
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->getFullDefinitionLoadingAnimCallback()Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :cond_1
    return-void
.end method

.method private isFullDefinitionSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 3

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$array;->full_definition_black_list_asins:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentDictionaryAsin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private refreshDefinitionBitmap(Landroid/util/Size;)V
    .locals 3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshDefinitionBitmap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 402
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayWidth:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    .line 407
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isFullDefinitionSupported:Z

    if-nez v1, :cond_2

    .line 408
    iput v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayWidth:I

    .line 409
    iput p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 412
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 414
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    .line 416
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setWidth(I)V

    .line 417
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setHeight(I)V

    .line 424
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->renderResultToBitmap(Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/graphics/Bitmap;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionText:Ljava/lang/String;

    .line 426
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->adjustBitmapColor()V

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private showDefinitionLoadingIndicator()V
    .locals 1

    .line 565
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tryLoadFullDefinitionWithLimitedHeight(IZ)Z
    .locals 3

    .line 542
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->calculateSizeOfBitmap(I)Landroid/util/Size;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    move p1, v1

    const/4 v1, 0x1

    .line 550
    :goto_0
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {v2, v0, p1}, Landroid/util/Size;-><init>(II)V

    if-eqz p2, :cond_1

    .line 551
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isTwoStepLoadingSupported:Z

    if-eqz p1, :cond_1

    .line 552
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->generateFullDefinitionBitmap(Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 553
    invoke-direct {p0, v2, v1, p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateDefinitionView(Landroid/util/Size;ZZLandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 555
    :cond_1
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->refreshDefinitionBitmap(Landroid/util/Size;)V

    const/4 p1, 0x0

    .line 556
    invoke-direct {p0, v2, v1, p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateDefinitionView(Landroid/util/Size;ZZLandroid/graphics/Bitmap;)V

    .line 558
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->hideDefinitionLoadingIndicatorIfNeeded()V

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v1
.end method

.method private updateDefinitionView(Landroid/util/Size;ZZLandroid/graphics/Bitmap;)V
    .locals 7

    .line 459
    new-instance v6, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Landroid/util/Size;ZZLandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateFontSelectionBasedOnLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 342
    invoke-static {p2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getLanguageFromAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 345
    sget-object p1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_0
    sget-object p1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateFontSelectionForJP()V

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 357
    :cond_2
    sget-object p2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 358
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    :cond_3
    sget-object p2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 360
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateFontSelectionForJP()V

    goto :goto_1

    .line 362
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateFontSelectionForJP()V
    .locals 2

    .line 367
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->TBGOTHICMED:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->TBGOTHICMED:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->TSUKUMIN:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setDefaultFontFace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateFullDefinitionLoadingIndicator(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->initializeFullDefinitionLoadingDrawable()V

    .line 497
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 500
    iget v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 501
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    goto :goto_0

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz p1, :cond_1

    .line 507
    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 510
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 511
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateInlineFullDefinitionLink(Z)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 520
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 522
    iget v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 523
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 525
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected adjustBitmapColor()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->dispose()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryDoc:Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    .line 234
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    .line 243
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v1, v2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 247
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 248
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 251
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 255
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v1, v2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 256
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 257
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingAnimCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 260
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingIndicator:Landroid/widget/ImageView;

    .line 262
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 263
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 243
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDefinitionDescriptionText()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionText:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateOffscreenBitmap()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 222
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->offscreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSizeChanged w: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " h: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " displayWidth: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayWidth:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " displayHeight: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    iget-boolean p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isFullDefinitionSupported:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayWidth:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->displayHeight:I

    if-ne p2, p1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateOffscreenBitmap()V

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 0

    .line 150
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->setColorModeId(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    return-void
.end method

.method protected setColorModeId(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 315
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 318
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$8;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_content_text_color_white_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$color;->info_card_text_view_bg_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 331
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_dark_mode_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$color;->info_card_text_view_bg_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 324
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->currentColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setTextColor(I)V

    .line 335
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setBackgroundColor(I)V

    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setLinkColor(I)V

    return-void
.end method

.method protected updateOffscreenBitmap()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isFullDefinitionSupported:Z

    if-eqz v0, :cond_2

    .line 186
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isTwoStepLoadingSupported:Z

    if-nez v0, :cond_1

    .line 187
    iget v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->maximumDefinitionViewHeight:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->tryLoadFullDefinitionWithLimitedHeight(IZ)Z

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->showDefinitionLoadingIndicator()V

    .line 192
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$2;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 207
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->calculateSizeOfBitmap(I)Landroid/util/Size;

    move-result-object v0

    .line 208
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->refreshDefinitionBitmap(Landroid/util/Size;)V

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_3
    :goto_0
    return-void
.end method
