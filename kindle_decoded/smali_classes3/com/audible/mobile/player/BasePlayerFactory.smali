.class public abstract Lcom/audible/mobile/player/BasePlayerFactory;
.super Ljava/lang/Object;
.source "BasePlayerFactory.java"

# interfaces
.implements Lcom/audible/mobile/player/PlayerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/audible/mobile/player/Player;
    .locals 1

    const-string v0, "the context must not be null."

    .line 16
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/audible/mobile/player/BasePlayerFactory;->get(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)Lcom/audible/mobile/player/Player;

    move-result-object p1

    return-object p1
.end method

.method protected abstract get(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)Lcom/audible/mobile/player/Player;
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/BasePlayerFactory;->get(Landroid/content/Context;)Lcom/audible/mobile/player/Player;

    move-result-object p1

    return-object p1
.end method

.method public final isSingleton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
