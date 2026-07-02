.class Lcom/amazon/kcp/search/StoreResultsLayout$2$1$1;
.super Ljava/lang/Object;
.source "StoreResultsLayout.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/StoreResultsLayout$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/search/StoreResultsLayout$2$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/StoreResultsLayout$2$1;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2$1$1;->this$2:Lcom/amazon/kcp/search/StoreResultsLayout$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout$2$1$1;->this$2:Lcom/amazon/kcp/search/StoreResultsLayout$2$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/StoreResultsLayout$2$1;->this$1:Lcom/amazon/kcp/search/StoreResultsLayout$2;

    iget-object v0, v0, Lcom/amazon/kcp/search/StoreResultsLayout$2;->val$cover:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 221
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method
