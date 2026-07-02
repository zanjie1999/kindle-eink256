.class public Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;
.super Lcom/amazon/sitb/android/BookPrice;
.source "DebugViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugBookPrice"
.end annotation


# instance fields
.field private isFree:Z

.field private isUsable:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 8

    .line 293
    new-instance v1, Ljava/math/BigDecimal;

    const-string v0, "14.99"

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-string v2, "USD"

    const-string v3, "$14.99"

    const/4 v4, 0x1

    const-wide v6, 0x9184e729fffL

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/sitb/android/BookPrice;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    .line 294
    iput-boolean p2, p0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;->isUsable:Z

    .line 295
    iput-boolean p3, p0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;->isFree:Z

    return-void
.end method


# virtual methods
.method public isFree()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;->isFree:Z

    return v0
.end method

.method public isUsable()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugBookPrice;->isUsable:Z

    return v0
.end method
