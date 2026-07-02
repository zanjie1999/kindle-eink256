.class Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;
.super Lcom/amazon/kindle/krx/ui/InfoCardProvider;
.source "TranslationReaderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/TranslationReaderPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cachedCard:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/overlay/translation/TranslationInfoCard;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/overlay/translation/TranslationReaderPlugin;

.field final synthetic val$readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/TranslationReaderPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->this$0:Lcom/amazon/overlay/translation/TranslationReaderPlugin;

    iput-object p2, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->val$readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 3

    .line 69
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->hasInfoCard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->cachedCard:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/overlay/translation/TranslationInfoCard;

    :cond_1
    if-nez v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->val$readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    sget v1, Lcom/amazon/kindle/oat/R$layout;->info_card_translation_v2:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->inflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/overlay/translation/TranslationInfoCard;

    :cond_2
    if-eqz v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->val$readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$bool;->enable_cache_info_card_view:I

    .line 84
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->cachedCard:Ljava/lang/ref/SoftReference;

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->val$readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->this$0:Lcom/amazon/overlay/translation/TranslationReaderPlugin;

    invoke-static {v2}, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->access$000(Lcom/amazon/overlay/translation/TranslationReaderPlugin;)Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/overlay/translation/TranslationInfoCard;->startTranslation(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;)V

    :cond_4
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->val$readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/oat/R$integer;->translation_selection_button_priority:I

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 63
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
