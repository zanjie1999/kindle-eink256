.class Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$1;
.super Ljava/lang/Object;
.source "StoreSearchResultViewHolder.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->setCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$1;->this$0:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$1;->this$0:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->access$000(Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$1;->this$0:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->access$000(Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$1;->this$0:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->access$100(Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
