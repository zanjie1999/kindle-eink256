.class public final synthetic Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;->INSTANCE:Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;

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

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
