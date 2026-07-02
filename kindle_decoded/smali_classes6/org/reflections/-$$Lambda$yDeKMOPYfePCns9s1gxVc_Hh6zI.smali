.class public final synthetic Lorg/reflections/-$$Lambda$yDeKMOPYfePCns9s1gxVc_Hh6zI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lorg/reflections/scanners/Scanner;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/scanners/Scanner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/-$$Lambda$yDeKMOPYfePCns9s1gxVc_Hh6zI;->f$0:Lorg/reflections/scanners/Scanner;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/reflections/-$$Lambda$yDeKMOPYfePCns9s1gxVc_Hh6zI;->f$0:Lorg/reflections/scanners/Scanner;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lorg/reflections/scanners/Scanner;->acceptsInput(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
