.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->handleItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

.field final synthetic val$bookOpenMetrics:Ljava/util/List;

.field final synthetic val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

.field final synthetic val$coverToAnimate:Landroid/widget/ImageView;

.field final synthetic val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field final synthetic val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/widget/ImageView;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$coverToAnimate:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$bookOpenMetrics:Ljava/util/List;

    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->isTmpCover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 354
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$coverToAnimate:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-object v6, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$bookOpenMetrics:Ljava/util/List;

    iget-object v7, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$2;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$100(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    :cond_0
    return-void
.end method
