.class Lcom/amazon/kindle/annotation/AnnotationsManager$7;
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
        "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
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

    .line 383
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    iput-object p3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->val$callback:Lcom/amazon/foundation/internal/IObjectCallback;

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    .line 389
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-nez p1, :cond_1

    .line 390
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSettingsFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$500(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 383
    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$7;->execute(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    return-void
.end method
