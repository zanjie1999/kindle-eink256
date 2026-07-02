.class public final synthetic Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;

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

    check-cast p1, Ljavassist/bytecode/AttributeInfo;

    invoke-static {p1}, Lorg/reflections/util/JavassistHelper;->lambda$getAnnotations$1(Ljavassist/bytecode/AttributeInfo;)[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method
