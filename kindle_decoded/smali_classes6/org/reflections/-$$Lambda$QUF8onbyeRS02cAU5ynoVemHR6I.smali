.class public final synthetic Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;->INSTANCE:Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/function/Predicate;

    check-cast p2, Ljava/util/function/Predicate;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method
