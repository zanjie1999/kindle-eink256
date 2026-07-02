.class public final Lcom/amazon/android/docviewer/IKindleTOC$TocRange;
.super Ljava/lang/Object;
.source "IKindleTOC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/IKindleTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TocRange"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final endPosition:I

.field public final startPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p2, p1, :cond_0

    .line 59
    sget-object v0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->TAG:Ljava/lang/String;

    const-string v1, "TOCRange constrcucted with endPostion < startPosition, swapping"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput p2, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    .line 61
    iput p1, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    goto :goto_0

    .line 63
    :cond_0
    iput p1, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    .line 64
    iput p2, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 74
    const-class v2, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;

    .line 80
    iget v2, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    iget v3, p1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    iget p1, p1, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    if-eq v2, p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget v0, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->startPosition:I

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget v1, p0, Lcom/amazon/android/docviewer/IKindleTOC$TocRange;->endPosition:I

    add-int/2addr v0, v1

    return v0
.end method
