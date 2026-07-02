.class Lcom/amazon/android/docviewer/mobi/MobiPage$3;
.super Ljava/lang/Object;
.source "MobiPage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPage;->getElementClosestToPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/android/docviewer/IPageElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

.field final synthetic val$filter:I

.field final synthetic val$precise:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPage;IIIZ)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$x:I

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$y:I

    iput p4, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$filter:I

    iput-boolean p5, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$precise:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/android/docviewer/IPageElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    .line 355
    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$x:I

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    .line 356
    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$400(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$y:I

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    .line 357
    invoke-static {v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$300(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$500(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$filter:I

    iget-boolean v4, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->val$precise:Z

    .line 355
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getElementClosestToPoint(IIIZ)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->create(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)Lcom/amazon/android/docviewer/mobi/MobiPageElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage$3;->call()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    return-object v0
.end method
