.class Lcom/amazon/android/docviewer/mobi/MobiPage$6;
.super Ljava/lang/Object;
.source "MobiPage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPage;->createText(III)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

.field final synthetic val$endId:I

.field final synthetic val$maxWords:I

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPage;III)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->val$startId:I

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->val$endId:I

    iput p4, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->val$maxWords:I

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

    .line 483
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->val$startId:I

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    .line 487
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->val$endId:I

    invoke-static {v1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v1

    .line 488
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v2

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$6;->val$maxWords:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getText(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/Position;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
