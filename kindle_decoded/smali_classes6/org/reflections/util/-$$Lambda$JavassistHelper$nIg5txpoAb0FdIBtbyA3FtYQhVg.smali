.class public final synthetic Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;

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

    check-cast p1, [Ljavassist/bytecode/annotation/Annotation;

    invoke-static {p1}, Lorg/reflections/util/JavassistHelper;->lambda$nIg5txpoAb0FdIBtbyA3FtYQhVg([Ljavassist/bytecode/annotation/Annotation;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
