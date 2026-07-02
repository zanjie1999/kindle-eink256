.class final Lorg/apache/commons/lang3/time/FastDateParser$2;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 796
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .locals 1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 802
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->access$700(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result p2

    :cond_0
    return p2
.end method
