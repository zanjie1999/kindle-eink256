.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;

    invoke-direct {v0}, Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;-><init>()V

    sput-object v0, Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;->INSTANCE:Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/reflections/scanners/Scanners;->lambda$new$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
