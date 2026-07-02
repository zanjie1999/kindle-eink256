.class final Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;
.super Ljava/lang/Object;
.source "FalkorDiscoverWidget.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;->this$0:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;->$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;->this$0:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;

    iget-object v1, v1, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;->this$0:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;

    iget-object v1, v0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$image:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$themedImageZone:Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;->this$0:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1$1;->this$0:Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/FalkorDiscoverWidget$bindView$1;->$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
