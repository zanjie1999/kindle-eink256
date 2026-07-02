.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$45;
.super Ljava/lang/Object;
.source "RenderedDocument.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;->submitCustomKRFTask(Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$customTask:Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;)V
    .locals 0

    .line 1249
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$45;->val$customTask:Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$45;->val$customTask:Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->execute()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
