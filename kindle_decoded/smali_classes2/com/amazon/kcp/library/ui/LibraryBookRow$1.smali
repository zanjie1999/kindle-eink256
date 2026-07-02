.class Lcom/amazon/kcp/library/ui/LibraryBookRow$1;
.super Ljava/lang/Object;
.source "LibraryBookRow.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/LibraryBookRow;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$1;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$1;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/LibraryBookRow;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 274
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    invoke-static {}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "trying to set the same cover image on the same drawable, skipping"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$1;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->bindCoverImage(Landroid/graphics/drawable/Drawable;)V

    .line 279
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->COVER_IMAGE_LOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$1;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    iget-object v1, v1, Lcom/amazon/kcp/library/ui/LibraryBookRow;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/library/LibraryDisplayItemUtils;->logPerfMarkerIfNecessary(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZLcom/amazon/kcp/library/ILibraryDisplayItem;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$1;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    iget-object v0, p1, Lcom/amazon/kcp/library/ui/LibraryBookRow;->coverImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->access$100(Lcom/amazon/kcp/library/ui/LibraryBookRow;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method
