.class Lcom/amazon/kindle/annotation/AnnotationsManager$13;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadReadingPosition(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$errorDescriberReceiver:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 844
    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$13;->val$errorDescriberReceiver:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$13;->val$errorDescriberReceiver:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 844
    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$13;->execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    return-void
.end method
