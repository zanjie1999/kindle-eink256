.class public Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;
.super Ljava/lang/Object;
.source "PageLabelAndIndex.java"


# instance fields
.field private final index:I

.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->index:I

    .line 20
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->index:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PageLabelAndIndex;->label:Ljava/lang/String;

    return-object v0
.end method
