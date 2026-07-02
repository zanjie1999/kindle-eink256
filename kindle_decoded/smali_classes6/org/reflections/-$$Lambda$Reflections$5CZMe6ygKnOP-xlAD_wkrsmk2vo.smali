.class public final synthetic Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lorg/reflections/Reflections;->lambda$null$3(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
