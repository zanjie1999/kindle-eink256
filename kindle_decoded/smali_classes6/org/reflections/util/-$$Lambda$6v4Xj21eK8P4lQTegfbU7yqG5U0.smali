.class public final synthetic Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;->INSTANCE:Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;

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

    check-cast p1, Ljava/util/function/Predicate;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
