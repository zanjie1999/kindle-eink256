.class public final synthetic Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;

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

    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-static {p1}, Lorg/reflections/util/JavassistHelper;->lambda$getConstructors$0(Ljavassist/bytecode/MethodInfo;)Z

    move-result p1

    return p1
.end method
