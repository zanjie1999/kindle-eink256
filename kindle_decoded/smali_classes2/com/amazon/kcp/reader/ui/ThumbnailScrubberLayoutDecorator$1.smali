.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;
.super Ljava/lang/Object;
.source "ThumbnailScrubberLayoutDecorator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->updateExpirationMessage(Landroid/view/View;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/widget/TextView;Landroid/widget/Button;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$storeButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/widget/Button;)V
    .locals 0

    .line 187
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;->val$storeButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenStoreDetailPageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;->val$storeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
