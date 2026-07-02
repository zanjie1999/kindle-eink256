.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Scanners$eCCBCaInxYhE3oMzF4EqS3-sfI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lorg/reflections/scanners/Scanners;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/scanners/Scanners;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$eCCBCaInxYhE3oMzF4EqS3-sfI8;->f$0:Lorg/reflections/scanners/Scanners;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$eCCBCaInxYhE3oMzF4EqS3-sfI8;->f$0:Lorg/reflections/scanners/Scanners;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lorg/reflections/scanners/Scanners;->lambda$scan$1$Scanners(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
