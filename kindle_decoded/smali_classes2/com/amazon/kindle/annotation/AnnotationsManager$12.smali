.class Lcom/amazon/kindle/annotation/AnnotationsManager$12;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->uploadJournals()Lcom/amazon/kindle/annotation/IUploadJournalsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/kindle/annotation/IUploadJournalsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$resultReceiver:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 764
    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$12;->val$resultReceiver:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$12;->val$resultReceiver:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 764
    check-cast p1, Lcom/amazon/kindle/annotation/IUploadJournalsResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$12;->execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V

    return-void
.end method
