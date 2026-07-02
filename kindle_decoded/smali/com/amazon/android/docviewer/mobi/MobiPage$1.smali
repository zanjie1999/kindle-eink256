.class Lcom/amazon/android/docviewer/mobi/MobiPage$1;
.super Ljava/lang/Object;
.source "MobiPage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPage;->getElements(I)Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Vector<",
        "Lcom/amazon/android/docviewer/IPageElement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

.field final synthetic val$filter:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPage;I)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$1;->val$filter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage$1;->call()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_PAGE_ELEMENTS:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$000(Lcom/amazon/android/docviewer/mobi/MobiPage;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 299
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getElementsConst()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_PAGE_ELEMENTS:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$000(Lcom/amazon/android/docviewer/mobi/MobiPage;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 302
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;->getCount()J

    move-result-wide v1

    long-to-int v2, v1

    .line 303
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    :goto_0
    if-ge v3, v2, :cond_1

    int-to-long v4, v3

    .line 305
    invoke-virtual {v0, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/docviewer/mobi/MobiPageElement;->create(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)Lcom/amazon/android/docviewer/mobi/MobiPageElement;

    move-result-object v4

    .line 306
    invoke-interface {v4}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v5

    iget v6, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$1;->val$filter:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 307
    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
