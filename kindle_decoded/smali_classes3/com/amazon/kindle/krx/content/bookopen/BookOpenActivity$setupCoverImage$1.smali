.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupCoverImage$krxsdk_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 292
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getLibraryService$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBookId$krxsdk_release()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getLibraryService$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    const-string v2, "libraryService"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getCurrentDriver$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->completeAction$krxsdk_release()V

    :cond_0
    return-void
.end method
