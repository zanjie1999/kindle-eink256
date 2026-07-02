.class public final synthetic Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;->INSTANCE:Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;

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

    invoke-static {p1}, Lorg/reflections/util/QueryFunction$-CC;->lambda$getAll$7(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
