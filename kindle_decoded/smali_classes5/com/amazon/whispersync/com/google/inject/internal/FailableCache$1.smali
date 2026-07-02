.class Lcom/amazon/whispersync/com/google/inject/internal/FailableCache$1;
.super Ljava/lang/Object;
.source "FailableCache.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->create(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 p1, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method
