.class public Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
.super Ljava/lang/Object;
.source "IKindleWordTokenIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/search/IKindleWordTokenIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordToken"
.end annotation


# instance fields
.field public final end:I

.field public final start:I

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p2, p0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    .line 113
    iput p3, p0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    return-void
.end method
