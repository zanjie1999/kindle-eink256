.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$listenForLoadedImages$1;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController;->listenForLoadedImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$listenForLoadedImages$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyImage(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$listenForLoadedImages$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0, p1, p2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$updateAndReloadAuthorImage(Lcom/amazon/readingactions/ui/widget/BlurbCardController;ILandroid/graphics/Bitmap;)V

    return-void
.end method
