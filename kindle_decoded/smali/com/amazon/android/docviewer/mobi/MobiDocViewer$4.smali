.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$4;
.super Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;
.source "MobiDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getSpeechBreakersForCurrentPage()Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask<",
        "Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 862
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;
    .locals 2

    .line 865
    new-instance v0, Lcom/amazon/kindle/speech/breaker/MobiSpeechBreakerList;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->krfDocViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->getSpeechBreakers()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/speech/breaker/MobiSpeechBreakerList;-><init>(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;)V

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$4;->execute()Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;

    move-result-object v0

    return-object v0
.end method
