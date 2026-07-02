.class Lcom/amazon/kindle/tutorial/Conditions$NotCondition;
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
    name = "NotCondition"
.end annotation


# instance fields
.field private final condition:Lcom/amazon/kindle/tutorial/ICondition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/ICondition;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/Conditions$NotCondition;->condition:Lcom/amazon/kindle/tutorial/ICondition;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/Conditions$NotCondition;->condition:Lcom/amazon/kindle/tutorial/ICondition;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/tutorial/ICondition;->evaluate(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
