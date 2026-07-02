.class public final synthetic Lorg/reflections/util/-$$Lambda$ohA-gUSHiLqo_TzPvsn6O1Er6dY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/util/QueryBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/util/QueryBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/util/-$$Lambda$ohA-gUSHiLqo_TzPvsn6O1Er6dY;->f$0:Lorg/reflections/util/QueryBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/reflections/util/-$$Lambda$ohA-gUSHiLqo_TzPvsn6O1Er6dY;->f$0:Lorg/reflections/util/QueryBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lorg/reflections/util/QueryBuilder;->get(Ljava/lang/String;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method
