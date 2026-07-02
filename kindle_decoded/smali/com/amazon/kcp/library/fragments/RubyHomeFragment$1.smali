.class Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;
.super Ljava/lang/Object;
.source "RubyHomeFragment.java"

# interfaces
.implements Lcom/amazon/kindle/home/card/HomeWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/RubyHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResumeWidgetEvent(Lcom/amazon/kindle/home/card/LibraryCardEvent;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->onResumeWidgetEvent(Lcom/amazon/kindle/home/card/LibraryCardEvent;Ljava/lang/String;)V

    return-void
.end method

.method public openBook(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .locals 11

    .line 151
    invoke-static {p1}, Lcom/amazon/kcp/library/HomeUtils;->bookIdForAsin(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 155
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->openStoreDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 164
    invoke-static {}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    aput-object p3, v1, v2

    const-string v2, "Failed to retrieve current activity for asin: \'%s\', bookType: \'%s\', refMarker: \'%s\'. Cannot open Book."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_1
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    invoke-virtual {v6, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    .line 170
    new-instance v8, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v8, v0}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 171
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v9, -0x1

    invoke-interface {v0, v8, v1, v9}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v9

    if-nez v9, :cond_2

    .line 175
    invoke-static {}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    aput-object p3, v1, v2

    const-string v2, "Failed to retrieve cover for asin: \'%s\', bookType: \'%s\', refMarker: \'%s\'. Cannot open Book."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_2
    new-instance v10, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;-><init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/ContentMetadataDisplayItem;)V

    invoke-virtual {v9, v10}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$200(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$200(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    new-instance v6, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v6, v0}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    const/4 v0, 0x0

    invoke-interface {v1, v6, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 199
    invoke-static {}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    aput-object p3, v1, v2

    const-string v2, "Failed to open book for asin: \'%s\', bookType: \'%s\', refMarker: \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v1

    iget-object v6, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    iget-object v6, v6, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v1, v0, v6}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 206
    invoke-static {}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    aput-object p3, v1, v2

    const-string v2, "Failed to download book for asin: \'%s\', bookType: \'%s\', refMarker: \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public openStoreDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget-object p2, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/utils/StoreOpeners;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    iget-object p2, p2, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    .line 126
    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 127
    invoke-interface {p1, p3}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :cond_1
    return-void
.end method
