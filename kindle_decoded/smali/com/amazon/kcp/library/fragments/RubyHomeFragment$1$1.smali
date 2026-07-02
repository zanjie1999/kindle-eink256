.class Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;
.super Ljava/lang/Object;
.source "RubyHomeFragment.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;->openBook(Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$animationParentView:Landroid/view/ViewGroup;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field final synthetic val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

.field final synthetic val$displayItem:Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

.field final synthetic val$refMarker:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/ContentMetadataDisplayItem;)V
    .locals 0

    .line 179
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$refMarker:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    iput-object p6, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$animationParentView:Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$displayItem:Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    .line 183
    invoke-static {}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$asin:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$contentType:Lcom/amazon/kindle/krx/content/ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$refMarker:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Failed to retrieve updated cover image for asin: \'%s\', bookType: \'%s\', refMarker: \'%s\'. Cannot open Book."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 190
    new-instance v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$animationParentView:Landroid/view/ViewGroup;

    .line 191
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    .line 192
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$1$1;->val$displayItem:Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    sget v2, Lcom/amazon/kindle/librarymodule/R$anim;->activity_fade_out:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->openBookFromBottom(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
