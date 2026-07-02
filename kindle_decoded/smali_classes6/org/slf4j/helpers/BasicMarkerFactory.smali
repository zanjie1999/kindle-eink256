.class public Lorg/slf4j/helpers/BasicMarkerFactory;
.super Ljava/lang/Object;
.source "BasicMarkerFactory.java"

# interfaces
.implements Lorg/slf4j/IMarkerFactory;


# instance fields
.field private final markerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 2

    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Marker;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/slf4j/helpers/BasicMarker;

    invoke-direct {v0, p1}, Lorg/slf4j/helpers/BasicMarker;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/slf4j/Marker;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Marker name cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
