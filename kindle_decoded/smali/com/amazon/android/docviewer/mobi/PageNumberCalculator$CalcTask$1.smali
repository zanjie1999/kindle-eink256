.class Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;
.super Ljava/lang/Object;
.source "PageNumberCalculator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask;-><init>(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/foundation/internal/IObjectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$endPosition:I

.field final synthetic val$item:Lcom/amazon/android/docviewer/ITOCItem;

.field final synthetic val$this$0:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;Lcom/amazon/android/docviewer/ITOCItem;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;->val$this$0:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;->val$item:Lcom/amazon/android/docviewer/ITOCItem;

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;->val$endPosition:I

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

    .line 166
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;->val$this$0:Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;->val$item:Lcom/amazon/android/docviewer/ITOCItem;

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator$CalcTask$1;->val$endPosition:I

    invoke-static {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->access$000(Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;Lcom/amazon/android/docviewer/ITOCItem;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
