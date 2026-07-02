.class Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;
.super Ljava/lang/Object;
.source "NarrationRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/player/NarrationRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rate"
.end annotation


# instance fields
.field private final desc:Ljava/lang/String;

.field private final tempo:I

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->tempo:I

    .line 230
    iput-object p2, p0, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->text:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTempo()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->tempo:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/audible/hushpuppy/common/player/NarrationRate$Rate;->text:Ljava/lang/String;

    return-object v0
.end method
