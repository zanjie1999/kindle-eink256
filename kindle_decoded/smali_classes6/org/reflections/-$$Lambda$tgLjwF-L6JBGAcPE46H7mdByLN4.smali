.class public final synthetic Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;

    invoke-direct {v0}, Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;-><init>()V

    sput-object v0, Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;->INSTANCE:Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
