.class public final synthetic Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;

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

    invoke-static {p1}, Lorg/reflections/ReflectionUtils;->lambda$get$0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
