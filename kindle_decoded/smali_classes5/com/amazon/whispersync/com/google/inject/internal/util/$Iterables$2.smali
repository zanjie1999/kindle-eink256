.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$2;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$IterableWithToString<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterators:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$2;->val$iterators:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$IterableWithToString;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$2;->val$iterators:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
