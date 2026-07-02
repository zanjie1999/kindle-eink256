.class abstract Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$HighlightColorModeBase;
.super Ljava/lang/Object;
.source "HighlightColorModeProvider.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/readalong/IHighlightColorMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HighlightColorModeBase"
.end annotation


# instance fields
.field private final selectionColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HighlightColorModeBase selectionColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 85
    iput p1, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$HighlightColorModeBase;->selectionColor:I

    return-void
.end method


# virtual methods
.method public getSelectionColor()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/audible/hushpuppy/view/readalong/HighlightColorModeProvider$HighlightColorModeBase;->selectionColor:I

    return v0
.end method
