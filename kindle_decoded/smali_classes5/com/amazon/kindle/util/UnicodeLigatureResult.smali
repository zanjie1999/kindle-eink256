.class public Lcom/amazon/kindle/util/UnicodeLigatureResult;
.super Ljava/lang/Object;
.source "UnicodeLigatureResult.java"


# instance fields
.field public out:[C


# direct methods
.method public constructor <init>(IC)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [C

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/util/UnicodeLigatureResult;->out:[C

    const/4 v0, 0x0

    aput-char p2, p1, v0

    return-void
.end method

.method public constructor <init>(ICC)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [C

    .line 10
    iput-object p1, p0, Lcom/amazon/kindle/util/UnicodeLigatureResult;->out:[C

    const/4 v0, 0x0

    aput-char p2, p1, v0

    const/4 p2, 0x1

    aput-char p3, p1, p2

    return-void
.end method
