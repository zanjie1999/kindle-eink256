.class public Lcom/amazon/identity/auth/accounts/SessionUserChanger;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/accounts/SessionUserChanger$OnSessionUsersChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.accounts.SessionUserChanger"


# instance fields
.field private final cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final cD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/accounts/SessionUserChanger$OnSessionUsersChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/accounts/AmazonAccountManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cD:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->TAG:Ljava/lang/String;

    const-string p2, "No New Session Users to add"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 142
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->y(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->z(Ljava/lang/String;)V

    goto :goto_2

    .line 1184
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/accounts/SessionUserChanger$OnSessionUsersChangedListener;

    .line 1186
    invoke-interface {v1, p1, p2}, Lcom/amazon/identity/auth/accounts/SessionUserChanger$OnSessionUsersChangedListener;->onChanged(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_3

    .line 159
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->p()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private ac(Ljava/lang/String;)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->x(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public ab(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "%s is not a session user, so nothing to notify about it being deregistered"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->p()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1071
    iget-object v3, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->A(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v3, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->p()Ljava/util/Set;

    move-result-object v3

    .line 1077
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v3, v2, :cond_2

    goto :goto_0

    .line 1082
    :cond_2
    iget-object v3, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->n()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->ac(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_4

    .line 61
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    .line 64
    invoke-static {v2}, Lcom/amazon/identity/auth/device/hp;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->p()Ljava/util/Set;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1169
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1171
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1173
    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->ac(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1175
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 104
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->cC:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->p()Ljava/util/Set;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 120
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 123
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 127
    invoke-direct {p0, v1, v2}, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 106
    :cond_4
    :goto_2
    sget-object p1, Lcom/amazon/identity/auth/accounts/SessionUserChanger;->TAG:Ljava/lang/String;

    const-string v1, "Cannot remove all session users. Change aborted"

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
