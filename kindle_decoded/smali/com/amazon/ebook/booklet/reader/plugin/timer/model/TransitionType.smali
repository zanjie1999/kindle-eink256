.class public Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;
.super Ljava/lang/Object;
.source "TransitionType.java"


# static fields
.field public static final GOTO_POSITION:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

.field private static final GOTO_SCREEN_JUMP:I = 0x2

.field public static final NEXT_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

.field private static final NEXT_SCREEN_JUMP:I = 0x0

.field public static final PREVIOUS_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

.field private static final PREV_SCREEN_JUMP:I = 0x1


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;-><init>(I)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->NEXT_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    .line 75
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;-><init>(I)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->PREVIOUS_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    .line 79
    new-instance v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;-><init>(I)V

    sput-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->GOTO_POSITION:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->type:I

    return-void
.end method

.method public static isValid(Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 60
    sget-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->NEXT_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    invoke-virtual {p0, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->PREVIOUS_PAGE:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    invoke-virtual {p0, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->GOTO_POSITION:Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    invoke-virtual {p0, v0}, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    instance-of v0, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;

    iget p1, p1, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->type:I

    iget v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->type:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    iget v0, p0, Lcom/amazon/ebook/booklet/reader/plugin/timer/model/TransitionType;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Not a valid transition"

    return-object v0

    :cond_0
    const-string v0, "Go to position"

    return-object v0

    :cond_1
    const-string v0, "Previous Page"

    return-object v0

    :cond_2
    const-string v0, "Next Page"

    return-object v0
.end method
