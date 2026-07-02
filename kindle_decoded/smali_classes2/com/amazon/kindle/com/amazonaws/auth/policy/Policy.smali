.class public Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field private static final DEFAULT_POLICY_VERSION:Ljava/lang/String; = "2012-10-17"


# instance fields
.field private id:Ljava/lang/String;

.field private statements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2012-10-17"

    .line 64
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->version:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    return-void
.end method

.method private assignUniqueStatementIds()V
    .locals 5

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    .line 230
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;

    .line 236
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 241
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setStatements(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->statements:Ljava/util/List;

    .line 178
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->assignUniqueStatementIds()V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 210
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePolicyToString(Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs withStatements([Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;
    .locals 0

    .line 198
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Policy;->setStatements(Ljava/util/Collection;)V

    return-object p0
.end method
