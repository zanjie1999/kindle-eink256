.class Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;
.super Ljava/lang/Object;
.source "AuthorBioListController.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthorBioImageDownloadListener"
.end annotation


# instance fields
.field private final authorBioView:Landroid/view/View;

.field private final clickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->this$0:Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->authorBioView:Landroid/view/View;

    .line 170
    iput-object p3, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;)Landroid/view/View;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->authorBioView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;->clickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 176
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener$1;-><init>(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
