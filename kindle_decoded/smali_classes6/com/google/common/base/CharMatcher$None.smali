.class final Lcom/google/common/base/CharMatcher$None;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "None"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1216
    new-instance v0, Lcom/google/common/base/CharMatcher$None;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$None;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1219
    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1229
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    return p1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1235
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 1236
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public matches(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1253
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
