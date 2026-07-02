.class Lcom/amazon/kindle/tutorial/Conditions$AndCondition;
.super Ljava/lang/Object;
.source "Conditions.java"

# interfaces
.implements Lcom/amazon/kindle/tutorial/ICondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/Conditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndCondition"
.end annotation


# instance fields
.field private final conditions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/tutorial/ICondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/tutorial/ICondition;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/Conditions$AndCondition;->conditions:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/Conditions$AndCondition;->conditions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/tutorial/ICondition;

    .line 45
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/tutorial/ICondition;->evaluate(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
