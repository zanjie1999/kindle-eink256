.class public abstract Lcom/amazon/kindle/krx/tutorial/conditions/BaseConditionEvaluator;
.super Ljava/lang/Object;
.source "BaseConditionEvaluator.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;


# static fields
.field private static final NOT_IMPLEMENTED:Ljava/lang/String; = "Abstract base class - not implemented!"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Abstract base class - not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
