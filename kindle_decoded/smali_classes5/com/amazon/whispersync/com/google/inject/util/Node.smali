.class Lcom/amazon/whispersync/com/google/inject/util/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private appliedScope:I

.field private appliedScopeAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private effectiveScope:I

.field private effectiveScopeDependency:Lcom/amazon/whispersync/com/google/inject/util/Node;

.field private final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation
.end field

.field private users:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/util/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 36
    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->appliedScope:I

    const/high16 v0, -0x80000000

    .line 39
    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScope:I

    .line 43
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->users:Ljava/util/Set;

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-void
.end method

.method private setEffectiveScope(ILcom/amazon/whispersync/com/google/inject/util/Node;)V
    .locals 1

    .line 62
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScope:I

    if-lt v0, p1, :cond_0

    return-void

    .line 66
    :cond_0
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScope:I

    .line 67
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScopeDependency:Lcom/amazon/whispersync/com/google/inject/util/Node;

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/util/Node;->pushScopeToUsers()V

    return-void
.end method


# virtual methods
.method public addUser(Lcom/amazon/whispersync/com/google/inject/util/Node;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->users:Ljava/util/Set;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->users:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method effectiveScopeDependency()Lcom/amazon/whispersync/com/google/inject/util/Node;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScopeDependency:Lcom/amazon/whispersync/com/google/inject/util/Node;

    return-object v0
.end method

.method isEffectiveScopeAppliedScope()Z
    .locals 2

    .line 88
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->appliedScope:I

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScope:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isScopedCorrectly()Z
    .locals 2

    .line 84
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->appliedScope:I

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScope:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method pushScopeToUsers()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/util/Node;

    .line 76
    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScope:I

    invoke-direct {v1, v2, p0}, Lcom/amazon/whispersync/com/google/inject/util/Node;->setEffectiveScope(ILcom/amazon/whispersync/com/google/inject/util/Node;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setScopeRank(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->appliedScope:I

    .line 54
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->effectiveScope:I

    .line 55
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->appliedScopeAnnotation:Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->appliedScopeAnnotation:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->appliedScopeAnnotation:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Node;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
