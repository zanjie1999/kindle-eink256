.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Scanner$bRlzEy6W_GDuyEOef-QSp2qpK7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/scanners/Scanner;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/scanners/Scanner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$Scanner$bRlzEy6W_GDuyEOef-QSp2qpK7s;->f$0:Lorg/reflections/scanners/Scanner;

    iput-object p2, p0, Lorg/reflections/scanners/-$$Lambda$Scanner$bRlzEy6W_GDuyEOef-QSp2qpK7s;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$Scanner$bRlzEy6W_GDuyEOef-QSp2qpK7s;->f$0:Lorg/reflections/scanners/Scanner;

    iget-object v1, p0, Lorg/reflections/scanners/-$$Lambda$Scanner$bRlzEy6W_GDuyEOef-QSp2qpK7s;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/reflections/scanners/Scanner$-CC;->lambda$entries$0(Lorg/reflections/scanners/Scanner;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
