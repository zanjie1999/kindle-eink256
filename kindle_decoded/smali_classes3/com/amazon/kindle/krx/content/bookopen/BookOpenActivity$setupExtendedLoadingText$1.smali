.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupExtendedLoadingText$krxsdk_release()V
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

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$downloadProgressPercentage(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)I

    move-result v0

    const/16 v1, 0x55

    if-ge v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->book_open_opening_text_switcher:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->showNext()V

    .line 610
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getContentOpenMetricsManager$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBookIdObject$krxsdk_release()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    .line 612
    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const-string v3, "showedExtraMessaging"

    .line 610
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->incrementCounters(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    :cond_0
    return-void
.end method
