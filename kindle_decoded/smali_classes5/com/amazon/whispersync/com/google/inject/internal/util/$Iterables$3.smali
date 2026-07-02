.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$3;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->transform(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Iterable;
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
.field final synthetic val$fromIterable:Ljava/lang/Iterable;

.field final synthetic val$function:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$3;->val$fromIterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$3;->val$function:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$IterableWithToString;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$3;->val$fromIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$3;->val$function:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->transform(Ljava/util/Iterator;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
