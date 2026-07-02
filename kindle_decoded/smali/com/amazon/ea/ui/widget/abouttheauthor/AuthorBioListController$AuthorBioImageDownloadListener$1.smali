.class Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;
.super Ljava/lang/Object;
.source "AuthorBioListController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;->this$1:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;->this$1:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;

    iget-object v1, v0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->access$000(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;->this$1:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->access$100(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;)Landroid/view/View$OnClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;->val$image:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2, v3}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->access$200(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V

    return-void
.end method
