.class public final synthetic Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;->INSTANCE:Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/reflections/util/NameHelper$-CC;->lambda$forMember$1(I)[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
