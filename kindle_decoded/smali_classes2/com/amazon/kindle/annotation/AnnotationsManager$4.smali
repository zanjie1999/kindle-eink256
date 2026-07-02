.class Lcom/amazon/kindle/annotation/AnnotationsManager$4;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsEarly(Ljava/lang/String;)Z
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

.field final synthetic val$bookId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$4;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$4;->val$bookId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V
    .locals 1

    .line 319
    invoke-interface {p1}, Lcom/amazon/kindle/annotation/IUploadJournalsResult;->getStatus()Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;->WEB_REQUEST_ERROR:Lcom/amazon/kindle/annotation/IUploadJournalsResult$Status;

    if-eq p1, v0, :cond_0

    .line 320
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$4;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$4;->val$bookId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsEarly(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 316
    check-cast p1, Lcom/amazon/kindle/annotation/IUploadJournalsResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$4;->execute(Lcom/amazon/kindle/annotation/IUploadJournalsResult;)V

    return-void
.end method
