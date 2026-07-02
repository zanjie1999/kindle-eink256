.class final Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;
.super Ljava/lang/Object;
.source "PurchaseDownloadActionProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider;->animateBookOpen(Lcom/amazon/kindle/content/ContentMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $animationParentView:Landroid/view/ViewGroup;

.field final synthetic $content:Lcom/amazon/kindle/content/ContentMetadata;

.field final synthetic $cover:Lcom/amazon/kcp/cover/UpdatableCover;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$animationParentView:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$content:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 102
    new-instance v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$animationParentView:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    .line 103
    new-instance v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/PurchaseDownloadActionProvider$animateBookOpen$1;->$content:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    sget v2, Lcom/amazon/kindle/librarymodule/R$anim;->activity_fade_out:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->openBookFromBottom(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
