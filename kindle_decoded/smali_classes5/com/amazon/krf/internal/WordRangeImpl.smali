.class public Lcom/amazon/krf/internal/WordRangeImpl;
.super Ljava/lang/Object;
.source "WordRangeImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/WordRange;


# instance fields
.field private final mDelimiter:C

.field private final mRange:Lcom/amazon/krf/platform/PositionRange;

.field private final mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/PositionRange;Ljava/lang/String;C)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/krf/internal/WordRangeImpl;->mRange:Lcom/amazon/krf/platform/PositionRange;

    .line 18
    iput-object p2, p0, Lcom/amazon/krf/internal/WordRangeImpl;->mText:Ljava/lang/String;

    .line 19
    iput-char p3, p0, Lcom/amazon/krf/internal/WordRangeImpl;->mDelimiter:C

    return-void
.end method


# virtual methods
.method public getDelimiter()C
    .locals 1

    .line 34
    iget-char v0, p0, Lcom/amazon/krf/internal/WordRangeImpl;->mDelimiter:C

    return v0
.end method

.method public getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/krf/internal/WordRangeImpl;->mRange:Lcom/amazon/krf/platform/PositionRange;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/krf/internal/WordRangeImpl;->mText:Ljava/lang/String;

    return-object v0
.end method
