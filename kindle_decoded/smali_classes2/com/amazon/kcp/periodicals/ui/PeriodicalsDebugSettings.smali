.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;
.super Ljava/lang/Object;
.source "PeriodicalsDebugSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;


# instance fields
.field private isClickableContentVisible:Z

.field private isDebuggingEnabled:Z

.field private isPopupBookmarkEnabled:Z

.field private isTOCSlideshowEnabled:Z

.field private isThumbnailGridViewCustomized:Z

.field private mForceUpsellType:Ljava/lang/String;

.field private mIsArticleAlwaysDownloading:Z

.field private mIsDownloadErrorEnabled:Z

.field private mIsYJAudioWidgetDisabled:Z

.field private mIsYJButtonWidgetDisabled:Z

.field private mIsYJDebugScreenEnabled:Z

.field private mIsYJHyperlinkWidgetDisabled:Z

.field private mIsYJImageSequenceWidgetDisabled:Z

.field private mIsYJImageWidgetDisabled:Z

.field private mIsYJPanZoomWidgetDisabled:Z

.field private mIsYJPanoramaWidgetDisabled:Z

.field private mIsYJReplicaEnabled:Z

.field private mIsYJRotationEnabled:Z

.field private mIsYJScrollableFrameWidgetDisabled:Z

.field private mIsYJSlideshowWidgetDisabled:Z

.field private mIsYJVideoWidgetDisabled:Z

.field private mIsYJWebContentWidgetDisabled:Z

.field private final modifiedSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;",
            ">;"
        }
    .end annotation
.end field

.field private nbOfTapToTextTutorialViews:I

.field private thumbnailGridHorizontalSpacing:I

.field private thumbnailGridVerticalSpacing:I

.field private thumbnailGridViewNbOfColumns:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->instance:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->modifiedSettings:Ljava/util/List;

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->clearSettings()V

    return-void
.end method

.method private addModifiedSetting(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->modifiedSettings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;
    .locals 2

    const-class v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->instance:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    invoke-direct {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;-><init>()V

    sput-object v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->instance:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    .line 137
    :cond_0
    sget-object v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->instance:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private markAllActiveSettingsAsModified()V
    .locals 2

    .line 186
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isClickableContentVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    sget-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->Show_Content:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->addModifiedSetting(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearBookmarks()V
    .locals 5

    .line 164
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->getInstance()Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot clear bookmarks, DBLocalPeriodicalState could not execute the \'clear\' command ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public clearSettings()V
    .locals 2

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled:Z

    .line 201
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isClickableContentVisible:Z

    const/4 v1, -0x1

    .line 202
    iput v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->nbOfTapToTextTutorialViews:I

    .line 203
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->modifiedSettings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 204
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isThumbnailGridViewCustomized:Z

    return-void
.end method

.method public consumeModifiedSettingFlag(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->modifiedSettings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->modifiedSettings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to consume a debug setting which was NOT modified : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getForceUpsellType()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mForceUpsellType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->modifiedSettings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNbOfTapToTextTutorialViews()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->nbOfTapToTextTutorialViews:I

    return v0
.end method

.method public getResourceAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 592
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "There is no sdcard"

    .line 594
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 596
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 597
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 598
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 603
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 604
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    sget-object p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    const-string v1, "Sample Josn file upsell_http_response.json read error"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Test file name=upsell_http_response.json not present in the /sdcard directory"

    .line 611
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 613
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailGridViewHorizontalSpacing()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->thumbnailGridHorizontalSpacing:I

    return v0
.end method

.method public getThumbnailGridViewNumberOfColumns()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->thumbnailGridViewNbOfColumns:I

    return v0
.end method

.method public getThumbnailGridViewVerticalSpacing()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->thumbnailGridVerticalSpacing:I

    return v0
.end method

.method public isArticleAlwaysDownloading()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mIsArticleAlwaysDownloading:Z

    return v0
.end method

.method public isClickableContentVisible()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isClickableContentVisible:Z

    return v0
.end method

.method public isDebuggingEnabled()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled:Z

    return v0
.end method

.method public isDownloadErrorEnabled()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mIsDownloadErrorEnabled:Z

    return v0
.end method

.method public isPopupBookmarkEnabled()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isPopupBookmarkEnabled:Z

    return v0
.end method

.method public isThumbnailGridViewCustomized()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isThumbnailGridViewCustomized:Z

    return v0
.end method

.method public isYJReplicaEnabled()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mIsYJReplicaEnabled:Z

    return v0
.end method

.method public performUpsellCoverSync(Landroid/content/Context;)V
    .locals 5

    .line 621
    :try_start_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    .line 622
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    .line 624
    invoke-static {p1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upsell.coversync.timestamp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getParentASIN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/nwstd/storage/KVStorage;->remove(Ljava/lang/String;)Z

    .line 625
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/amazon/nwstd/service/NwstdIntentService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "UpsellCoverSync"

    .line 626
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 627
    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getParentASIN()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "ParentAsins"

    .line 628
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 633
    throw p1
.end method

.method public performUpsellFullSync(Landroid/content/Context;)V
    .locals 7

    .line 563
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v0

    const-string/jumbo v1, "upsell.sync.timestamp"

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last full sync timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "There is no previous full sync"

    .line 569
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running the upsell full sync, this might take some time. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 570
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/storage/KVStorage;->remove(Ljava/lang/String;)Z

    .line 571
    invoke-static {p1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->launchOneShotFullSync(Landroid/content/Context;)V

    return-void
.end method

.method public performUpsellFullSyncFromSampleJson(Landroid/content/Context;)V
    .locals 9

    .line 580
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v0

    const-string v1, "test_string"

    .line 581
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, "test_string"

    const-string v2, "test_string"

    const-string v4, "test_string"

    const-string v5, "test_string"

    const-string v6, "test_string"

    const-string v7, "test_string"

    move-object v3, p1

    invoke-static/range {v0 .. v8}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->createInstance(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;

    move-result-object v0

    const-string/jumbo v1, "upsell_http_response.json"

    .line 583
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getResourceAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->parseAndSaveSampleJson(Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void
.end method

.method public setArticleAlwaysDownloading(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mIsArticleAlwaysDownloading:Z

    return-void
.end method

.method public setContentVisible(Z)V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isClickableContentVisible:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isClickableContentVisible:Z

    if-eqz v0, :cond_1

    .line 151
    sget-object p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->Show_Content:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->addModifiedSetting(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;)V

    :cond_1
    return-void
.end method

.method public setDebuggingEnabled(Z)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->markAllActiveSettingsAsModified()V

    .line 195
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled:Z

    return-void
.end method

.method public setDownloadErrorEnabled(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mIsDownloadErrorEnabled:Z

    return-void
.end method

.method public setForceUpsellType(Ljava/lang/String;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mForceUpsellType:Ljava/lang/String;

    return-void
.end method

.method public setIsYJDebugScreenEnabled(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mIsYJDebugScreenEnabled:Z

    return-void
.end method

.method public setNbOfTapToTextTutorialViews(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->nbOfTapToTextTutorialViews:I

    return-void
.end method

.method public setPopupBookmarkEnabled(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isPopupBookmarkEnabled:Z

    return-void
.end method

.method public setThumbnailGridViewCustomized(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isThumbnailGridViewCustomized:Z

    return-void
.end method

.method public setThumbnailGridViewHorizontalSpacing(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->thumbnailGridHorizontalSpacing:I

    return-void
.end method

.method public setThumbnailGridViewNumberOfColumns(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->thumbnailGridViewNbOfColumns:I

    return-void
.end method

.method public setThumbnailGridViewVerticalSpacing(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->thumbnailGridVerticalSpacing:I

    return-void
.end method

.method public setmIsYJReplicaEnabled(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->mIsYJReplicaEnabled:Z

    return-void
.end method

.method public updateBackgroundSyncFreq(Landroid/content/Context;I)V
    .locals 5

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const-wide/16 v1, 0x0

    int-to-long v3, p2

    .line 505
    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->registerAlarm(Landroid/content/Context;JJ)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Upsell sync frequency to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " milliseconds"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p2, "Cannot set negative value for the upsell sync frequency."

    .line 508
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
