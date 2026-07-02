.class public Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;
.super Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;
.source "ShareProgressButton.java"


# static fields
.field private static final BUTTON_PRIORITY:I = 0x384

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_PRIORITY:I = 0x28a


# instance fields
.field private final buttonText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v4, 0x28a

    const/16 v5, 0x384

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, p5

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;IILjava/lang/String;)V

    .line 37
    iput-object p4, p0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;->buttonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;->buttonText:Ljava/lang/String;

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->canPerformProgressShare(Lcom/amazon/kindle/krx/content/IBook;)Z

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

    .line 26
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method protected share(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 50
    sget-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "ASIN: %s, Progress: %d %%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->entryPoint:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getSocialSharingActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    const-string v1, "PROGRESS"

    .line 54
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->entryPoint:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
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

    .line 60
    sget-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/ShareProgressButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Exception launching the social sharing plugin with a share progress intent"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
