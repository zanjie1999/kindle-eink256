.class Lcom/amazon/kcp/font/FontFileParser$TableRecord;
.super Ljava/lang/Object;
.source "FontFileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/FontFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableRecord"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field offset:I


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/font/FontFileParser;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/font/FontFileParser;Lcom/amazon/kcp/font/FontFileParser$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/FontFileParser$TableRecord;-><init>(Lcom/amazon/kcp/font/FontFileParser;)V

    return-void
.end method
