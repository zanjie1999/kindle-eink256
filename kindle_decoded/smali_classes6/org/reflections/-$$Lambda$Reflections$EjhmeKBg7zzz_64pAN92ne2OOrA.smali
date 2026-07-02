.class public final synthetic Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;

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

    invoke-static {p1}, Lorg/reflections/Reflections;->lambda$scan$0(Ljava/lang/String;)Ljava/lang/String;

    return-object p1
.end method
