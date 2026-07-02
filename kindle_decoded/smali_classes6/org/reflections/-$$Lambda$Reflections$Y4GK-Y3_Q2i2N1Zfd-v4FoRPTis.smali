.class public final synthetic Lorg/reflections/-$$Lambda$Reflections$Y4GK-Y3_Q2i2N1Zfd-v4FoRPTis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lorg/reflections/Reflections;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/Reflections;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/-$$Lambda$Reflections$Y4GK-Y3_Q2i2N1Zfd-v4FoRPTis;->f$0:Lorg/reflections/Reflections;

    iput-object p2, p0, Lorg/reflections/-$$Lambda$Reflections$Y4GK-Y3_Q2i2N1Zfd-v4FoRPTis;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/reflections/-$$Lambda$Reflections$Y4GK-Y3_Q2i2N1Zfd-v4FoRPTis;->f$0:Lorg/reflections/Reflections;

    iget-object v1, p0, Lorg/reflections/-$$Lambda$Reflections$Y4GK-Y3_Q2i2N1Zfd-v4FoRPTis;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/net/URL;

    invoke-virtual {v0, v1, p1}, Lorg/reflections/Reflections;->lambda$scan$2$Reflections(Ljava/util/Map;Ljava/net/URL;)V

    return-void
.end method
