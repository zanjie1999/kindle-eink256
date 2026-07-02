.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupCoverImage$krxsdk_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $coverManager:Lcom/amazon/kindle/cover/ICoverImageService;

.field final synthetic $desiredSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->$desiredSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iput-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->$coverManager:Lcom/amazon/kindle/cover/ICoverImageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 324
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->$desiredSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cover image asynchronously for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBookId$krxsdk_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getLibraryService$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBookId$krxsdk_release()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getLibraryService$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    const-string v3, "libraryService"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->$coverManager:Lcom/amazon/kindle/cover/ICoverImageService;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->$desiredSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received cover image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBookId$krxsdk_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
