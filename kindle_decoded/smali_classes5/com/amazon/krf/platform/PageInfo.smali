.class public Lcom/amazon/krf/platform/PageInfo;
.super Ljava/lang/Object;
.source "PageInfo.java"


# instance fields
.field private final mIndex:I

.field private final mLabel:Ljava/lang/String;

.field private final mPosition:Lcom/amazon/krf/platform/Position;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/Position;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/krf/platform/PageInfo;->mPosition:Lcom/amazon/krf/platform/Position;

    .line 20
    iput p2, p0, Lcom/amazon/krf/platform/PageInfo;->mIndex:I

    .line 21
    iput-object p3, p0, Lcom/amazon/krf/platform/PageInfo;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/krf/platform/PageInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/krf/platform/PageInfo;->mIndex:I

    return v0
.end method

.method public getPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/krf/platform/PageInfo;->mPosition:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method
