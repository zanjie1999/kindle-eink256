.class Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;
.super Landroid/os/AsyncTask;
.source "BookInBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/oob/BookInBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateBibAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/amazon/kindle/content/ContentMetadata;",
        "Ljava/lang/Void;",
        "Lcom/amazon/kcp/oob/BibUpdateArguments;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field private final animationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

.field appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field bibView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

.field libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/ref/WeakReference;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/system/io/IPersistentSettingsHelper;",
            "Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ")V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    .line 277
    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->bibView:Ljava/lang/ref/WeakReference;

    .line 278
    iput-object p3, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 279
    iput-object p4, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 280
    iput-object p5, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 281
    iput-object p6, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->animationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    .line 282
    iput-object p7, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    return-void
.end method

.method private getBibContentDescription(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/String;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->bibView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->isBibRestricted(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->most_recent_book:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->getLocalContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getBibDrawable(Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-direct {p0, p2}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->isBibRestricted(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->isPermissionGranted(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/cover/ICoverImageService;->getMediumCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 308
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 309
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private isBibRestricted(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/android/util/RestrictionUtils;->getInstance()Lcom/amazon/android/util/RestrictionUtils;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/util/RestrictionUtils;->isBookTypeBlocked(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPermissionGranted(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 333
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isStoragePermissionsGranted(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public varargs doInBackground([Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kcp/oob/BibUpdateArguments;
    .locals 3

    if-eqz p1, :cond_0

    .line 289
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 290
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 291
    aget-object p1, p1, v0

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v0, "LAST_BOOK_READ_ID"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    .line 297
    :goto_0
    new-instance v0, Lcom/amazon/kcp/oob/BibUpdateArguments;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->getBibContentDescription(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->getBibDrawable(Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/amazon/kcp/oob/BibUpdateArguments;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 260
    check-cast p1, [Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->doInBackground([Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kcp/oob/BibUpdateArguments;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/amazon/kcp/oob/BibUpdateArguments;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->bibView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/BibUpdateArguments;->getBibImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->animationHelper:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/BibUpdateArguments;->getBibImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/BibUpdateArguments;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 260
    check-cast p1, Lcom/amazon/kcp/oob/BibUpdateArguments;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/oob/BookInBarController$UpdateBibAsyncTask;->onPostExecute(Lcom/amazon/kcp/oob/BibUpdateArguments;)V

    return-void
.end method
