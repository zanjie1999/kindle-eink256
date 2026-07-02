.class public final Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;
.super Ljava/lang/Object;
.source "ComposedUriTranslator.java"

# interfaces
.implements Lcom/audible/mobile/framework/UriTranslator;


# instance fields
.field private final uriTranslators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/framework/UriTranslator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/framework/UriTranslator;)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/mobile/framework/UriTranslator;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->uriTranslators:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/audible/mobile/framework/UriTranslator;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->uriTranslators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public registerUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->uriTranslators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public translate(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->uriTranslators:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/framework/UriTranslator;

    .line 93
    invoke-interface {v1, p1}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public unregisterUriTranslator(Lcom/audible/mobile/framework/UriTranslator;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/ComposedUriTranslator;->uriTranslators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
