.class public Lcom/audible/android/kcp/store/activity/UpgraderActivity;
.super Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;
.source "UpgraderActivity.java"


# static fields
.field public static final EXTRA_KEY_ASIN:Ljava/lang/String;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private mAsin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/store/activity/UpgraderActivity;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/android/kcp/store/activity/UpgraderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ASIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->EXTRA_KEY_ASIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoreType()Lcom/audible/android/kcp/store/StoreType;
    .locals 1

    .line 69
    sget-object v0, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 55
    invoke-super {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->mAsin:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "forceMobile"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->mAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    sget-object v1, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "ASIN not available for upgrader"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->EXTRA_KEY_ASIN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->mAsin:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->EXTRA_KEY_ASIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/store/activity/UpgraderActivity;->mAsin:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->onCreate(Landroid/os/Bundle;Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
