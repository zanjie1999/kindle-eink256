.class public final synthetic Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;->INSTANCE:Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;

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

    check-cast p1, Lorg/reflections/scanners/Scanner;

    invoke-interface {p1}, Lorg/reflections/scanners/Scanner;->index()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
