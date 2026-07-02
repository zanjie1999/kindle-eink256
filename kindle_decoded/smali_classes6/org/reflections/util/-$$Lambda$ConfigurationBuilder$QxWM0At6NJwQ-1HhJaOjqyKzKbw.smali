.class public final synthetic Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;->INSTANCE:Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/util/ConfigurationBuilder;->lambda$static$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
