.class public Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;
.super Ljava/lang/Object;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;
    }
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation
.end field

.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private effect:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

.field private id:Ljava/lang/String;

.field private principals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    .line 96
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->effect:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    return-object v0
.end method

.method public getEffect()Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->effect:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->resources:Ljava/util/List;

    return-object v0
.end method

.method public setActions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;",
            ">;)V"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->actions:Ljava/util/List;

    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;",
            ">;)V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->conditions:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->id:Ljava/lang/String;

    return-void
.end method

.method public setPrincipals(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;",
            ">;)V"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->principals:Ljava/util/List;

    return-void
.end method

.method public varargs setPrincipals([Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;)V
    .locals 1

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->setPrincipals(Ljava/util/Collection;)V

    return-void
.end method

.method public setResources(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;",
            ">;)V"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->resources:Ljava/util/List;

    return-void
.end method

.method public varargs withActions([Lcom/amazon/kindle/com/amazonaws/auth/policy/Action;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;
    .locals 0

    .line 231
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withConditions([Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;
    .locals 0

    .line 347
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->setConditions(Ljava/util/List;)V

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs withPrincipals([Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;
    .locals 0

    .line 407
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->setPrincipals([Lcom/amazon/kindle/com/amazonaws/auth/policy/Principal;)V

    return-object p0
.end method

.method public varargs withResources([Lcom/amazon/kindle/com/amazonaws/auth/policy/Resource;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;
    .locals 0

    .line 280
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    return-object p0
.end method
