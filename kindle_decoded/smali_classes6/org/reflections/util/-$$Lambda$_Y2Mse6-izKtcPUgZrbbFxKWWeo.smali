.class public final synthetic Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;->INSTANCE:Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;

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

    check-cast p1, Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {p1}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
