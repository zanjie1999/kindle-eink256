.class public Lcom/amazon/kcp/info/brochure/BrochureRecommendBookWithImageAction;
.super Lcom/amazon/kcp/info/brochure/BrochureRecommendBookAction;
.source "BrochureRecommendBookWithImageAction.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BrochureRecommendBookWithImageAction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureRecommendBookAction;-><init>()V

    return-void
.end method


# virtual methods
.method public share(Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;)V
    .locals 4

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.amazon.kindle.socialsharing.ui.activity.SocialSharingActivity"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getAcrGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.socialsharing.EXTRA_ACR_GUID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getBookFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.socialsharing.BOOK_FORMAT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.socialsharing.CONTENT_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    const-string v3, "BOOK_IMAGE"

    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    const-string v3, "Brochure"

    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.ENABLE_GOODREADS_PROGRESS_SHARE"

    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_THEME"

    const-string v3, "THEME_LIGHT"

    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.socialsharing.EXTRA_REF_TAG"

    .line 47
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageDownloadedPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_SHAREABLE_IMAGE_PATH"

    .line 49
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
