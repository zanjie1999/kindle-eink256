.class public final synthetic Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;

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

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->lambda$static$1(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
