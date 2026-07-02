.class public final synthetic Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/reflections/util/UtilQueryBuilder;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;
    .locals 0

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->lambda$static$3(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method
