.class final Lcom/amazon/whispersync/com/google/inject/internal/Initializables$1;
.super Ljava/lang/Object;
.source "Initializables.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializables$1;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 30
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializables$1;->val$instance:Ljava/lang/Object;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializables$1;->val$instance:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
