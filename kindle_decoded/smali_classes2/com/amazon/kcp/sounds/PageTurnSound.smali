.class public Lcom/amazon/kcp/sounds/PageTurnSound;
.super Ljava/lang/Object;
.source "PageTurnSound.java"


# static fields
.field public static BAXTER_MODE:Z = false

.field public static ENCOURAGEMENT_MODE:Z = false

.field private static dogSound:I = 0x0

.field private static encouragementSounds:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lastRandEncouragementIndex:I = -0x1

.field private static random:Ljava/util/Random;

.field private static secretEncouragementPlayed:I

.field private static secretEncouragementSound:I

.field private static soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/amazon/kcp/sounds/PageTurnSound;->BAXTER_MODE:Z

    .line 19
    sput-boolean v0, Lcom/amazon/kcp/sounds/PageTurnSound;->ENCOURAGEMENT_MODE:Z

    return-void
.end method

.method public static destroy()V
    .locals 2

    .line 85
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 87
    sput-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    .line 89
    :cond_0
    sput-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    return-void
.end method

.method private static getRandomEncouragementIndex()I
    .locals 4

    .line 64
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    sget v1, Lcom/amazon/kcp/sounds/PageTurnSound;->secretEncouragementSound:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 67
    :cond_0
    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->random:Ljava/util/Random;

    sget-object v2, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 70
    sget v2, Lcom/amazon/kcp/sounds/PageTurnSound;->secretEncouragementPlayed:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 71
    sget v1, Lcom/amazon/kcp/sounds/PageTurnSound;->lastRandEncouragementIndex:I

    .line 73
    :cond_1
    sget v2, Lcom/amazon/kcp/sounds/PageTurnSound;->secretEncouragementPlayed:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    sput v2, Lcom/amazon/kcp/sounds/PageTurnSound;->secretEncouragementPlayed:I

    .line 75
    :cond_2
    sget v2, Lcom/amazon/kcp/sounds/PageTurnSound;->lastRandEncouragementIndex:I

    if-eq v2, v1, :cond_0

    return v1
.end method

.method public static initSounds(Landroid/content/Context;)V
    .locals 4

    .line 26
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/amazon/kindle/librarymodule/R$raw;->dogbark:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/amazon/kcp/sounds/PageTurnSound;->dogSound:I

    .line 31
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/amazon/kindle/librarymodule/R$raw;->encouragement_secret:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/amazon/kcp/sounds/PageTurnSound;->secretEncouragementSound:I

    .line 32
    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/amazon/kindle/librarymodule/R$raw;->encouragement1:I

    invoke-virtual {v1, p0, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/amazon/kindle/librarymodule/R$raw;->encouragement2:I

    invoke-virtual {v1, p0, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/amazon/kindle/librarymodule/R$raw;->encouragement3:I

    invoke-virtual {v1, p0, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/amazon/kindle/librarymodule/R$raw;->encouragement5:I

    invoke-virtual {v1, p0, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/amazon/kindle/librarymodule/R$raw;->encouragement6:I

    invoke-virtual {v1, p0, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    sget v3, Lcom/amazon/kindle/librarymodule/R$raw;->encouragement7:I

    invoke-virtual {v1, p0, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/amazon/kcp/sounds/PageTurnSound;->ENCOURAGEMENT_MODE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amazon/kcp/sounds/PageTurnSound;->BAXTER_MODE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static playSound()V
    .locals 9

    .line 43
    sget-object v0, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 49
    sget-boolean v1, Lcom/amazon/kcp/sounds/PageTurnSound;->BAXTER_MODE:Z

    if-eqz v1, :cond_1

    .line 50
    sget v0, Lcom/amazon/kcp/sounds/PageTurnSound;->dogSound:I

    .line 53
    :cond_1
    sget-boolean v1, Lcom/amazon/kcp/sounds/PageTurnSound;->ENCOURAGEMENT_MODE:Z

    if-eqz v1, :cond_2

    .line 54
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->getRandomEncouragementIndex()I

    move-result v0

    .line 55
    sget-object v1, Lcom/amazon/kcp/sounds/PageTurnSound;->encouragementSounds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 56
    sput v0, Lcom/amazon/kcp/sounds/PageTurnSound;->lastRandEncouragementIndex:I

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v0

    .line 59
    :goto_0
    sget-object v2, Lcom/amazon/kcp/sounds/PageTurnSound;->soundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
