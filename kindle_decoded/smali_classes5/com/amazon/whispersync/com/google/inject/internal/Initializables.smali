.class final Lcom/amazon/whispersync/com/google/inject/internal/Initializables;
.super Ljava/lang/Object;
.source "Initializables.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Initializables$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Initializables$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
