.class public final synthetic Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;->INSTANCE:Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;

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

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->isMethod()Z

    move-result p1

    return p1
.end method
