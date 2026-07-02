.class public Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;
.super Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;
.source "ShareBookButton.java"


# static fields
.field private static final BUTTON_PRIORITY:I = 0x50

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_PRIORITY:I = 0x258


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v4, 0x258

    const/16 v5, 0x50

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, p4

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getIntent(Lcom/amazon/kindle/krx/content/IBook;)Landroid/content/Intent;
    .locals 2

    .line 75
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->entryPoint:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getSocialSharingActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->entryPoint:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.amazon.kindle.socialsharing.ENABLE_GOODREADS_PROGRESS_SHARE"

    const/4 v1, 0x1

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->book_recommend_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 42
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canPerformBookShare(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method protected share(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 55
    sget-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ASIN: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;->getIntent(Lcom/amazon/kindle/krx/content/IBook;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    const-string v1, "BOOK"

    .line 59
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    sget-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareBookButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Exception launching the social sharing plugin with a recommend the book intent"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
