.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Scanners$7$kRZsE-GCnbE6DGUbeM1eqvTznpc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lorg/reflections/scanners/Scanners$7;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/scanners/Scanners$7;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$kRZsE-GCnbE6DGUbeM1eqvTznpc;->f$0:Lorg/reflections/scanners/Scanners$7;

    iput-object p2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$kRZsE-GCnbE6DGUbeM1eqvTznpc;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$kRZsE-GCnbE6DGUbeM1eqvTznpc;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$kRZsE-GCnbE6DGUbeM1eqvTznpc;->f$0:Lorg/reflections/scanners/Scanners$7;

    iget-object v1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$kRZsE-GCnbE6DGUbeM1eqvTznpc;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$kRZsE-GCnbE6DGUbeM1eqvTznpc;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lorg/reflections/scanners/Scanners$7;->lambda$null$0$Scanners$7(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
