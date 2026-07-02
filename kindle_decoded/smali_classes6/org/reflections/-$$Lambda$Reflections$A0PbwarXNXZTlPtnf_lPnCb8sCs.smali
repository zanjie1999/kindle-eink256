.class public final synthetic Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/Reflections;->lambda$expandSupertypes$10(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
