.class Lcom/amazon/startactions/ui/widget/BookDetailWidget$2;
.super Ljava/lang/Object;
.source "BookDetailWidget.java"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageDownloader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/BookDetailWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/BookDetailWidget;Landroid/widget/ImageView;)V
    .locals 0

    .line 107
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$2;->val$imageView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
