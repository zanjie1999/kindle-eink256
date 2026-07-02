.class Lcom/amazon/android/docviewer/KindleTOCLocator$1;
.super Ljava/lang/Object;
.source "KindleTOCLocator.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/KindleTOCLocator;->getPageNumberMap(Lcom/amazon/android/docviewer/ITOCItem;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/KindleTOCLocator;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/KindleTOCLocator;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleTOCLocator$1;->this$0:Lcom/amazon/android/docviewer/KindleTOCLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator$1;->this$0:Lcom/amazon/android/docviewer/KindleTOCLocator;

    iget-object v0, v0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberToPositionMapCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;->getItem()Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;->getPageNumberToPositionMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleTOCLocator$1;->this$0:Lcom/amazon/android/docviewer/KindleTOCLocator;

    iget-object v0, v0, Lcom/amazon/android/docviewer/KindleTOCLocator;->mPageNumberCalcEventProvider:Lcom/amazon/foundation/internal/ObjectEventProvider;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;->getItem()Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/ObjectEventProvider;->notifyListeners(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p1, Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator$1;->execute(Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;)V

    return-void
.end method
