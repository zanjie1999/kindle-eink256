.class public final synthetic Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/util/NameHelper;

.field private final synthetic f$1:Ljava/lang/Class;

.field private final synthetic f$2:[Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/util/NameHelper;Ljava/lang/Class;[Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;->f$0:Lorg/reflections/util/NameHelper;

    iput-object p2, p0, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;->f$2:[Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;->f$0:Lorg/reflections/util/NameHelper;

    iget-object v1, p0, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;->f$2:[Ljava/lang/ClassLoader;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/reflections/util/NameHelper$-CC;->lambda$forNames$2(Lorg/reflections/util/NameHelper;Ljava/lang/Class;[Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
