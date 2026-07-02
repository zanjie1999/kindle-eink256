.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->transform(Ljava/util/Iterator;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$fromIterator:Ljava/util/Iterator;

.field final synthetic val$function:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;->val$fromIterator:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;->val$function:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;->val$fromIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;->val$fromIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;->val$function:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$5;->val$fromIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
