.class public Lcom/amazon/krf/platform/PageModel$PaginationInfo;
.super Ljava/lang/Object;
.source "PageModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/PageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaginationInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/krf/platform/PageModel$PaginationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field private mSection:I

.field private mSettingsHash:J


# direct methods
.method private constructor <init>(JII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSettingsHash:J

    .line 23
    iput p3, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSection:I

    .line 24
    iput p4, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mOffset:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/krf/platform/PageModel$PaginationInfo;)I
    .locals 6

    if-eqz p1, :cond_5

    .line 45
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSettingsHash:J

    iget-wide v2, p1, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSettingsHash:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    return v4

    .line 50
    :cond_0
    iget v0, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSection:I

    iget v1, p1, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSection:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    return v2

    :cond_1
    if-ge v0, v1, :cond_2

    return v4

    .line 54
    :cond_2
    iget v0, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mOffset:I

    iget p1, p1, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mOffset:I

    if-le v0, p1, :cond_3

    return v2

    :cond_3
    if-ge v0, p1, :cond_4

    return v4

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    const/4 p1, 0x0

    .line 44
    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/krf/platform/PageModel$PaginationInfo;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->compareTo(Lcom/amazon/krf/platform/PageModel$PaginationInfo;)I

    move-result p1

    return p1
.end method

.method public getOffset()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mOffset:I

    return v0
.end method

.method public getSection()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSection:I

    return v0
.end method

.method public getSettingsHash()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/amazon/krf/platform/PageModel$PaginationInfo;->mSettingsHash:J

    return-wide v0
.end method
