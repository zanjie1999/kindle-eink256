.class public Lcom/amazon/xray/plugin/util/SharingUtil;
.super Ljava/lang/Object;
.source "SharingUtil.java"


# static fields
.field private static final SOCIAL_SHARING_PREFIX:Ljava/lang/String; = "com.amazon.kindle.socialsharing."

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.util.SharingUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isSharingEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 50
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 60
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.krx.library.BookMetadataKey.QUOTE_SHARING_ENABLED"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    sget-object p0, Lcom/amazon/xray/plugin/util/SharingUtil;->TAG:Ljava/lang/String;

    const-string v0, "Sharing from Xray is not available"

    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 67
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.amazon.kindle.socialsharing.ui.activity.SocialSharingActivity"

    .line 68
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 70
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 71
    :cond_4
    :goto_0
    sget-object p0, Lcom/amazon/xray/plugin/util/SharingUtil;->TAG:Ljava/lang/String;

    const-string v0, "Sharing is not supported; No activity will respond to sharing intent"

    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static shareExcerpt(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/model/object/Excerpt;Ljava/lang/String;)V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.amazon.kindle.socialsharing.ui.activity.SocialSharingActivity"

    .line 92
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.kindle.socialsharing.EXTRA_ASIN"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_QUOTE"

    .line 96
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.amazon.kindle.socialsharing.EXTRA_START_POSITION"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Excerpt;->getLength()I

    move-result p1

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.kindle.socialsharing.EXTRA_END_POSITION"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.kindle.socialsharing.EXTRA_ENTRY_POINT"

    const-string p2, "XRAY"

    .line 101
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.kindle.socialsharing.EXTRA_CONTENT_LANGUAGE"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.kindle.socialsharing.EXTRA_SHARE_TYPE"

    const-string p2, "QUOTE"

    .line 103
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.kindle.socialsharing.EXTRA_REF_TAG"

    const-string p2, "r_xray_socialsharing"

    .line 104
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p0

    const-string p1, "Xray"

    const-string p2, "Book:Share:Passage"

    .line 109
    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
