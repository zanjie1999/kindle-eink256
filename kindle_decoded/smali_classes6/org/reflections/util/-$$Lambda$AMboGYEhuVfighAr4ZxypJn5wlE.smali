.class public final synthetic Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;->INSTANCE:Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
