.class Lcom/amazon/kindle/annotation/AnnotationsManager$6;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z
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
.field final synthetic this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

.field final synthetic val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field final synthetic val$callback:Lcom/amazon/foundation/internal/IObjectCallback;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    iput-object p3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/annotation/IUploadJournalsResult;->getStatus()Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->WEB_REQUEST_ERROR:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    if-ne v0, v1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-interface {p1}, Lcom/amazon/kindle/annotation/IUploadJournalsResult;->getWebRequestErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 368
    check-cast p1, Lcom/amazon/kindle/annotation/IUploadJournalsResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$6;->execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V

    return-void
.end method
