.class public final synthetic Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;->INSTANCE:Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
